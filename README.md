## Table of Contents
- [Donwload](#download)
- [Concept](#concept)
- [Usage](#usage)
- [License](#license)

## Download
### [______________ underLine ______________](https://raw.githubusercontent.com/gdepoyant/underline/main/_.cmd)
```
_______ One File - No Installation _______
___ Manually & easily synchronize data ___
_ Re-take control of your manual backups _
```
> #####  Follow the link & either `ctrl-S` or `Settings` > `Save Page As`

## Concept
```
  Data backups simply by creating shortcuts to the data you want to save
```
> This project aims to mainstream data backups processes for people mostly familiar with GUIs on Windows.

  The underLine command wraps Windows' [Robocopy](https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/robocopy) tool (Linux equivalent of `rsync`) and allow you to make "semi-automated" backups in a matter of a few clicks - reference your data with shortcuts once & always be one click away from synchronizing it all.

## Usage
### Locate the data
  Let's assume we have several disks on a machine and several directories cross drives we'd like to backup.

```
C:\users\root\                    D:\Program Files\           E:\
├── Desktop/                      ├── Text editor/            ├── System backups/
|   ├── importantScans/           |   ├── src/                └── Shared network/
|   ├── phoneNumbers.txt          |   ├── bin/                    ├── contracts/
|   └── showerThoughts.txt        |   ├── pluggins/               ├── training/
├── Documents/                    |   └── config.cfg              └── holidays.xls
├── Music/                        └── Video game/
├── Pictures/                         ├── src/
├── bestQuotesZen.txt                 ├── bin/
├── meditation.mp3                    ├── replays/
└── summerCrush.png                   └── autoexec.cfg
```

> underLining your data is a backup solution - re-use old USB sticks to often back your data up & make it redundant!

We now want to create a backup of some directories/files on a USB drive `G:\`

Let's simply create a list of shortcuts pointing to the data we'd like to save

```
G:\
├── bestQuotesZen.txt       --> C:\users\root\bestQuotesZen.txt
├── contracts               --> D:\Program Files\Shared network\contracts\
├── importantScans          --> C:\users\root\Desktop\importantScans\
├── Documents               --> C:\users\root\Documents\
├── pluggins                --> D:\Program Files\Text editor\pluggins\
├── replays                 --> D:\Program Files\Video game\replays\
├── phoneNumbers.txt        --> C:\users\root\Desktop\phoneNumbers.txt
└── System backups          --> D:\Program Files\System backups\
```

### underLine the data
Copy the underLine command script `_.cmd` in the folder containing all the shortcuts & run it. All the data will be backed in the underLine directory `_/` alongside with all the synchronization logs.

Your `G:\` drive should now look as such:

```
G:\
├── _/
├── ├── _/
|   |   └── *.log
|   ├── contracts/
|   ├── importantScans/
|   ├── Documents/
|   ├── pluggins/
|   ├── replays/
|   ├── System backups/
|   ├── bestQuotesZen.txt
|   └── phoneNumbers.txt
├── _.cmd
├── bestQuotesZen.txt       --> C:\users\root\bestQuotesZen.txt
├── contracts               --> D:\Program Files\Shared network\contracts\
├── importantScans          --> C:\users\root\Desktop\importantScans\
├── Documents               --> C:\users\root\Documents\
├── pluggins                --> D:\Program Files\Text editor\pluggins\
├── replays                 --> D:\Program Files\Video game\replays\
├── phoneNumbers.txt        --> C:\users\root\Desktop\phoneNumbers.txt
└── System backups          --> D:\Program Files\System backups\
```
> Running the script is the backup action - backups are to the date of your last synchronization
> 
> Remember to manually retrigger the command whenever you need to synchronize (or run it as a scheduled task)

## License

[MIT © Guillaume Depoyant](LICENSE)
