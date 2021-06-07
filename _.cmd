<# : begin batch
@echo off & setlocal enabledelayedexpansion

if not "%1" == "max" start /MAX cmd /c %0 max & exit/b

powershell -noprofile "iex (${%~f0} | out-string)"
echo ERRORLEVEL %ERRORLEVEL%

goto :EOF
: end batch / begin PowerShell #>

# github.com/gdepoyant/underline

$backupDir = ".\_"
$logsDir = ".\_\_"
$sh = (New-Object -ComObject WScript.Shell)

if(!(test-path $logsDir))
{
	New-Item -ItemType Directory -Force -Path $logsDir | Out-Null
}

[string[]]$Excludes = @("_", "_.cmd")
Get-ChildItem . -Exclude $Excludes | ForEach-Object {

	$fullname = $_.FullName
	$targetpath = ($sh.CreateShortcut($fullname).TargetPath)
	$targetname = (Split-Path $targetpath -leaf)
	$targetisdir = (Test-Path -Path $targetpath -PathType Container)
	$logfile = (Join-Path $logsDir $targetname) + ".log"

	if(!($targetisdir))
	{
		$parent = (Split-Path $targetpath -Parent)
		robocopy  /s /z /j /np /ndl /tee /eta /log+:$logfile $parent $backupDir $targetname
	}
	else
	{
		robocopy  /s /z /j /np /ndl /tee /eta /log+:$logfile $targetpath (Join-Path $backupDir $targetname)
	}
}

pause
