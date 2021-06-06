# [_______ underLine _______](https://raw.githubusercontent.com/gdepoyant/underline/main/_.cmd)
```
________ One File - No Installation ________
____ Manually & easily synchronize data ____
__ Re-take control of your manual backups __
```

## Table of Contents
- [Donwload](#download)
- [Concept](#concept)
- [Usage](#usage)
- [License](#license)

## Download
# [_______ underLine _______](https://raw.githubusercontent.com/gdepoyant/underline/main/_.cmd)
###### :bulb: Follow the link & save the file  `ctrl-S` or `Settings` > `Save Page As`

## Concept
```
  Data backups simply by creating shortcuts to the data you want to save
```
  The underLine command wraps Windows' [Robocopy](https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/robocopy) tool and allow you to make "semi-automated" backups in a matter of a few clicks.
  
  Reference your data with shortcuts once & always be one click away from synchronizing it all.

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

###### :bulb: underLining your data is a backup solution - re-use old USB sticks to often back your data up & make it redundant!

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
Copy the underLine command script `_.cmd` in the folder containing all the shortcuts & run it.

All the data will be backed in the underLine directory `_` alongside with all the synchronization logs.

###### :bulb: Running the script is the backup action - remember to manually retrigger the command whenever you need to synchronize (or run it as a scheduled task)

Your `G:\` drive should now look as such:

```
G:\
├── _/
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
## License

[MIT © Guillaume Depoyant](LICENSE)
