# Student's Guide To Linux

[01 Introduction](#introduction)

[02 About Me](#about-me)

[03 How to Contribute](#how-to-contribute)

[04 Outline](#outline)

## Introduction

This project is a Linux guide aimed at students. Its purpose is for them to getting to know Linux based operating systems and their basic mechanics.
Its structure can be seen [below](#outline).
The guide is based on the [Linux Foundation System Administrator Certification](https://training.linuxfoundation.org/certification/linux-foundation-certified-sysadmin-lfcs/)

## About Me

I am a student of the DHBW Mosbach in my currently 6th semester of the course *Applied Computer Science*. This work is a thesis written during the 5th an d 6th theoretical semester. Together with my coordinator [Philipp Abele](https://github.com/philippabele) this work emerged.

## How to Contribute 

To contibute follow these steps:
- [Fork this Repo](https://docs.github.com/en/get-started/quickstart/fork-a-repo)
- Clone the repo to your local PC: `git clone git@github.com:<your-username>/developers-guide-to-linux.git`
- Pick a topic you want to work on from the [Outline](#outline): i.e. *Service Configuration - Configure an IMAP and IMAPS service*
- [Create an issue](https://docs.github.com/en/desktop/contributing-and-collaborating-using-github-desktop/working-with-your-remote-repository-on-github-or-github-enterprise/creating-an-issue-or-pull-request) in the original project which will be solved by your contribution
- Create a feature branch for this topic: `git checkout -b feature-imap_configuration`
- Write about your topic
    + Follow the folder structure: **05 Service Configuration** -> **050_imap_configuration** -> **010_configure_imap.md**
    + Think about a neat exercise to consolidate the knowledge you write about and supply a solution to it
    + Take the Literature Section as inspiration for research
    + Do some Research on your own, the OS manufacturers like RedHat, Cononical (Ubuntu) and Suse offer great documentations
- Add your files, commit your changes and push them:
    + `git add -A`
    + `git commit -am 'added imap configuration'`
    + `git push`
- Create a pull request on [GitHub](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request) to the development branch of this project and [link the issue you are solving](https://docs.github.com/en/issues/tracking-your-work-with-issues/linking-a-pull-request-to-an-issue)

## Outline
- [x] Essential Commands 25%
    - [x] Log into local & remote graphical and text mode consoles
    - [x] Search for files
    - [x] Evaluate and compare the basic file system features and options
    - [x] Compare and manipulate file content
    - [x] Use input-output redirection (e.g. >, >>, |, 2>)
    - [x] Analyze text using basic regular expressions
    - [x] Archive, backup, compress, unpack, and uncompress files
    - [x] Create, delete, copy, and move files and directories
    - [x] Create and manage hard and soft links
    - [x] List, set, and change standard file permissions
    - [x] Read, and use system documentation

- [x] Operation of Running Systems 20%
    - [x] Boot, reboot, and shut down a system safely
    - [x] Boot or change system into different operating modes
    - [x] Install, configure and troubleshoot bootloaders
    - [x] Diagnose and manage processes
    - [x] Locate and analyze system log files
    - [x] Schedule tasks to run at a set date and time
    - [x] Verify completion of scheduled jobs
    - [x] Update software to provide required functionality and security
    - [x] Verify the integrity and availability of resources
    - [x] Verify the integrity and availability of key processes
    - [x] Change kernel runtime parameters, persistent and non-persistent
    - [x] Use scripting to automate system maintenance tasks
    - [x] Manage the startup process and services (In Services Configuration)
    - [x] List and identify SELinux/AppArmor file and process contexts
    - [x] Manage Software
    - [x] Identify the component of a Linux distribution that a file belongs to

- [x] User and Group Management 10%
    - [x] Create, delete, and modify local user accounts
    - [x] Create, delete, and modify local groups and group memberships
    - [x] Manage system-wide environment profiles
    - [x] Manage template user environment
    - [x] Configure user resource limits
    - [x] Manage user privileges
        + [x] Manage access to the root account   
    - [x] Configure PAM

- [x] Networking 12%
    - [x] Configure networking and hostname resolution statically or dynamically
    - [x] Configure network services to start automatically at boot
    - [x] Implement packet filtering
    - [x] Start, stop, and check the status of network services
    - [x] Statically route IP traffic
    - [x] Synchronize time using other network peers

- [ ] Service Configuration 20%
    - [x] Configure a caching DNS server
    - [x] Maintain a DNS zone
    - [ ] Configure email aliases
    - [x] Configure SSH servers and clients
    - [x] Restrict access to the HTTP proxy server
    - [ ] Configure an IMAP and IMAPS service
    - [ ] Query and modify the behavior of system services at various operating modes
    - [x] Configure an HTTP server
    - [x] Configure HTTP server log files
    - [ ] Configure a database server
    - [ ] Restrict access to a web page
    - [ ] Manage and configure containers
    - [ ] Manage and configure Virtual Machines

- [ ] Storage Management 13%
    - [ ] List, create, delete, and modify physical storage partitions
    - [ ] Manage and configure LVM storage
    - [ ] Create and configure encrypted storage
    - [ ] Configure systems to mount file systems at or during boot
    - [ ] Configure and manage swap space
    - [ ] Create and manage RAID devices
    - [ ] Configure systems to mount file systems on demand
    - [ ] Create, manage and diagnose advanced file system permissions
    - [ ] Setup user and group disk quotas for filesystems
    - [ ] Create and configure file systems
