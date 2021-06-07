## Table of Contents
- [Download](#underline)
- [Concept](#concept)
- [Usage](#usage)
- [License](#license)

## [UNDERLINE](https://github.com/gdepoyant/underline/raw/main/_.cmd)
> Get the underline command `_.cmd` from this link

## Concept
```
      ┬   ┬     ┬   ┬     ┌┬──┐     ┬───┐     ┬───┐     ┬         ┬     ┬   ┬    ┬───┐
      │   │     │\  │      │  │     │         │   │     │         │     │\  │    │
      │   │     │ \ │      │  │     ├─┤       ├──┬┘     │         │     │ \ │    ├─┤
      │   │     │  \│      │  │     │         │  │      │         │     │  \│    │
      └───┘     ┴   ┴     └┼──┘     ┴───┘     ┴  └─     ┼───┘     ┴     ┴   ┴    ┴───┤
                           │                            │                            │
C:\users\root\             │      D:\Program Files\     │     E:\                    │
├── Desktop/               │      ├── Text editor/      │     ├── System backups/    │
│   ├── importantScans/    │      │   ├── src/          │     │   ───────────────────┤
│   │   ───────────────────┤      │   ├── bin/          │     └── Shared network/    │
│   ├── phoneNumbers.txt   │      │   ├── pluggins/     │       ├── contracts/       │
│   │   ───────────────────┤      │   │   ──────────────┤       │   ─────────────────┘
│   └── showerThoughts.txt │      │   └── config.cfg    │       ├── training/
├── Documents/             │      └── Video game/       │       └── holidays.xls
│   ───────────────────────┤          ├── src/          │
├── Music/                 │          ├── bin/          │
├── Pictures/              │          ├── replays/      │
├── bestQuotesZen.txt      │          │   ──────────────┘
│   ───────────────────────┘          └── autoexec.cfg
├── meditation.mp3
└── summerCrush.png
```

### Data backups simply by creating shortcuts to the data you want to save

####  One file - no installation
> Just download the underline command file & use it straight away

####  Manually & easily synchronize data
> Create rules using basic file/directory understanding

####  Re-take control of your manual backups
> Facilitate data backups processes for people mostly familiar with GUIs on Windows & pick up good practices

  The underLine command wraps Windows' [Robocopy](https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/robocopy) tool (Linux equivalent of `rsync`) and allow you to make "semi-automated" backups in a matter of a few clicks - reference your data with shortcuts once & always be one click away from synchronizing it all.

## Usage
### Underline the data
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

We now want to create a backup of some directories/files on a USB drive `G:\`

Let's simply create a list of shortcuts pointing to the data we'd like to save

> Re-use old USB sticks to often back your data up & make it redundant!

```
G:\
├── bestQuotesZen.txt       --> C:\users\root\bestQuotesZen.txt
├── contracts               --> E:\Shared network\contracts\
├── importantScans          --> C:\users\root\Desktop\importantScans\
├── Documents               --> C:\users\root\Documents\
├── pluggins                --> D:\Program Files\Text editor\pluggins\
├── replays                 --> D:\Program Files\Video game\replays\
├── phoneNumbers.txt        --> C:\users\root\Desktop\phoneNumbers.txt
└── System backups          --> E:\System backups\
```

### Synchronize the data
Copy the underLine command script `_.cmd` in the folder containing all the shortcuts & run it. All the data will be backed in the underLine directory `_/` alongside with all the synchronization logs.

Your `G:\` drive should now look as such:

```
G:\
├── _/
|   ├── _/
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
├── contracts               --> E:\Shared network\contracts\
├── importantScans          --> C:\users\root\Desktop\importantScans\
├── Documents               --> C:\users\root\Documents\
├── pluggins                --> D:\Program Files\Text editor\pluggins\
├── replays                 --> D:\Program Files\Video game\replays\
├── phoneNumbers.txt        --> C:\users\root\Desktop\phoneNumbers.txt
└── System backups          --> E:\System backups\
```
> Running the script is the backup action - backups are to the date of your last synchronization
> 
> Remember to manually retrigger the command whenever you need to synchronize (or run it as a scheduled task)

## License

[MIT © Guillaume Depoyant](LICENSE)
