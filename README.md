## Table of Contents
- [Download](#underline)
- [Concept](#concept)
- [Usage](#usage)
- [License](#license)

## [UNDERLINE](https://github.com/gdepoyant/underline/raw/main/_.cmd)
> Get the underline command `_.cmd` from this link

## Concept
```
   ┬   ┬     ┬   ┬     ─┬──┐     ┬───┐     ┬───┐     ┬         ┬     ┬   ┬    ┬───┐   
   │   │     │\  │      │  │     │         │   │     │         │     │\  │    │       
   │   │     │ \ │      │  │     ├─┤       ├──┬┘     │         │     │ \ │    ├─┤     
   │   │     │  \│      │  │     │         │  │      │         │     │  \│    │       
   └───┘     ┴   ┴     ─┴──┘     ┴───┘     ┴  └┘     ┴───┘     ┴     ┴   ┴    ┴───┘   
└──────────────────────────┬────────────────────────────┬────────────────────────────┐
                           │                            │                            │
C:\users\root\             │      D:\Program Files\     │     E:\                    │
├── Desktop/               │      ├── Text editor/      │     ├── System backups/____│
│   ├── importantScans/____│      │   ├── bin/          │     └── Shared network/    │
│   ├── phoneNumbers.txt___│      │   ├── pluggins/_____│         ├── contracts/_____│
│   └── showerThoughts.txt │      │   ├── src/          │         ├── training/       
├── Documents/             │      │   └── config.cfg    │         └── holidays.xls    
├── Music/                 │      └── Video game/       │                             
├── Pictures/              │          ├── bin/          │                             
├── bestQuotesZen.txt______│          ├── replays/______│                             
├── meditation.mp3_________│          ├── src/                                        
└── summerBrunch.png                  └── autoexec.cfg                                
```

### Data backups simply by creating shortcuts to the data you want to save

####  One file - no installation
> Just download the underline command file & use it straight away

####  Manually & easily synchronize data
> Create rules using basic file/directory understanding

####  Re-take control of your manual backups
> Facilitate data backups processes for **Windows** users

  The underline command wraps Windows' [robocopy](https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/robocopy) tool (Linux equivalent of [rsync](https://linux.die.net/man/1/rsync)) and enables you to make "semi-automated" backups in a matter of a few clicks - reference your data with shortcuts once & always be one click away from synchronizing it all.

## Usage
### Underline the data
  Let's assume we have several disks on a machine and several directories cross drives we'd like to backup.

```
C:\users\root\                    D:\Program Files\           E:\
├── Desktop/                      ├── Text editor/            ├── System backups/
│   ├── importantScans/           │   ├── bin/                └── Shared network/
│   ├── phoneNumbers.txt          │   ├── pluggins/               ├── contracts/
│   └── showerThoughts.txt        │   ├── src/                    ├── training/
├── Documents/                    │   └── config.cfg              └── holidays.xls
├── Music/                        └── Video game/
├── Pictures/                         ├── bin/
├── bestQuotesZen.txt                 ├── replays/
├── meditation.mp3                    ├── src/
└── summerBrunch.png                  └── autoexec.cfg
```

We now want to create a backup of some directories/files on a USB drive `G:\`

Let's simply create a list of shortcuts pointing to the data we'd like to save

> Re-use old USB sticks to often back your data up & make it redundant!

```
G:\
├── bestQuotesZen.txt       --> C:\users\root\bestQuotesZen.txt
├── contracts               --> E:\Shared network\contracts\
├── Documents               --> C:\users\root\Documents\
├── importantScans          --> C:\users\root\Desktop\importantScans\
├── phoneNumbers.txt        --> C:\users\root\Desktop\phoneNumbers.txt
├── pluggins                --> D:\Program Files\Text editor\pluggins\
├── replays                 --> D:\Program Files\Video game\replays\
└── System backups          --> E:\System backups\
```

### Synchronize the data
Copy the underLine command script `_.cmd` in the folder containing all the shortcuts & run it. All the data will be backed in the underLine directory `_/` alongside with all the synchronization logs.

Your `G:\` drive should now look as such:

```
G:\
├── _/
│   ├── _/
│   │   └── *.log
│   ├── contracts/
│   ├── Documents/
│   ├── importantScans/
│   ├── pluggins/
│   ├── replays/
│   ├── System backups/
│   ├── bestQuotesZen.txt
│   └── phoneNumbers.txt
├── _.cmd
├── bestQuotesZen.txt       --> C:\users\root\bestQuotesZen.txt
├── contracts               --> E:\Shared network\contracts\
├── Documents               --> C:\users\root\Documents\
├── importantScans          --> C:\users\root\Desktop\importantScans\
├── phoneNumbers.txt        --> C:\users\root\Desktop\phoneNumbers.txt
├── pluggins                --> D:\Program Files\Text editor\pluggins\
├── replays                 --> D:\Program Files\Video game\replays\
└── System backups          --> E:\System backups\
```
> Backups being manual they will be up to the date of your last manual synchronization

:bulb: Remember to manually run the underline command for syncing data or set it as a scheduled task!

## License

[MIT © Guillaume Depoyant](LICENSE)
