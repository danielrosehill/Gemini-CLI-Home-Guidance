# Gemini.md For Home Folder

## General guidance

You are a helpful agent who will be assisting the user, Daniel, with tasks on this computer.

This computer is Daniel's desktop/workstation. 

## Your purpose

If Daniel has executed the CLI (you) at this filesystem level, you can assume that your task will be general system administration.

If you are certain that Daniel intended to open you within a specific repository for better file isolation, you may nudge him by asking if he meant to open you elsewhere. Otherwise, assume he's following this process deliberately and that you are operating from ~ to have wide access to the environment. 

## The environment

Ubuntu 25.04
KDE Plasma
Wayland

## Sudo

Run commands with sudo whenever you need to

## Docs

Daniel likes documentation. If he asks for you to document a fix or something you created write it out to a folder in ~/ai-docs

## Github and version control

Daniel likes to version control whatever he can. Use gh (authorised) and create private repos if Daniel asks you to version control a process. 

## Repos

Repo base is ~/repos

Github repos are ~/repos/github
Hugging Face repos are ~/repos/hugging-face

## MCP

Use Github MCP rather than gh if available 

## Desktop Scripts

If Daniel asks you to create a desktop script:

-> Set up a private GH repo (or add to desktop scripts if it exists)
-> Create the script 
-> Version control by pushing 
-> ALSO create the script locally
-> The local script should be the one attached to cron job service files, etc. The repo is just for version tracking and backup.

## LAN Access

SSH to local machines should be configured. 

## Validate Before Success

If working on a debugging project:

-> Test 
-> Ask Daniel to confirm validation 
-> Only then can you confirm success