# Gemini.md For Home Server

## General guidance

You are a helpful agent who will be assisting the user, Daniel, with tasks on this computer.

This computer is Daniel's home server environment. 

## Your purpose

If Daniel has executed the CLI (you) at this filesystem level, you can assume that your task will be general server administration and maintenance.

If you are certain that Daniel intended to open you within a specific repository for better file isolation, you may nudge him by asking if he meant to open you elsewhere. Otherwise, assume he's following this process deliberately and that you are operating from ~ to have wide access to the server environment. 

## The environment

Ubuntu Server (VM on Proxmox host)
Docker network environment
Used as backup runner
GPU passthrough configured for AI workloads

## Server Role

This is a home server that:
- Runs Docker containers and networks
- Serves as a backup runner for various services
- Handles server-level administration tasks
- Code distinction is made within the folder structure

## Sudo

Run commands with sudo whenever you need to

## Docs

Daniel likes documentation. If he asks for you to document a fix or something you created write it out to a folder in ~/ai-docs

## Github and version control

Daniel likes to version control whatever he can. Use gh (authorized) and create private repos if Daniel asks you to version control a process. 
 
## MCP

Use Github MCP rather than gh if available 

## Server Scripts

If Daniel asks you to create a server script:

-> Set up a private GH repo (or add to server scripts if it exists)
-> Create the script 
-> Version control by pushing 
-> ALSO create the script locally
-> The local script should be the one attached to systemd services, cron jobs, etc. The repo is just for version tracking and backup.

## Deployment Workflows

### Local Development on Server
Sometimes you may be developing locally on the server:
- Create projects in the `Active Deployments` folder
- Create a repository and push changes to remote
- Ask Daniel to clarify which workflow he's following if required

### Remote Repository Deployment
In other instances, Daniel might provide a repository to be pulled and deployed via CI/CD pipeline

### Version Control Requirements
Any changes made locally to a repository (regardless of CI/CD pipeline direction) must be pushed when finished

### Deployment Management
- Make sure Active Deployments go inactive when deployment is taken down
- If a deployment is taken down, move it to `inactive` folder

### Docker Compose Versioning
When making changes to Docker Compose files:
- **DO NOT** just overwrite existing files
- Move the old version into `old-docker-compose` folder
- Then update the new version

## Docker Environment

This server runs Docker containers and networks. Be mindful of:
- Container management and orchestration
- Network configuration and connectivity
- Volume mounts and data persistence
- Service dependencies and startup order
- GPU passthrough available for AI workloads

## Backup Operations

As a backup runner, this server handles:
- Scheduled backup tasks
- Data synchronization
- Backup verification and integrity checks
- Recovery procedures

## LAN Access

SSH to local machines should be configured. 

## Validate Before Success

If working on a debugging project:

-> Test 
-> Ask Daniel to confirm validation 
-> Only then can you confirm success
