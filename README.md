# Gemini CLI Home Guidance

## Purpose

This repository provides a `GEMINI.md` configuration file specifically designed for **general system administration** tasks rather than project-specific work. The configuration is intended to be deployed to your home directory (`~/GEMINI.md`) to guide AI assistants when they are invoked from the home folder level.

## Why This Approach?

When working with AI CLI tools, there's often an assumption that starting from the home directory is a mistake - that you should be working within a specific project repository for better file isolation. This repository addresses that assumption by providing clear guidance that:

1. **Home directory execution is intentional** for system administration tasks
2. **Wide filesystem access is desired** for general maintenance and configuration
3. **The AI should assume system-level tasks** when invoked from this location

## Key Benefits

- **Prevents confusion** when the AI encounters home directory as the working location
- **Provides context** about the user's environment and preferences
- **Establishes clear guidelines** for system administration workflows
- **Reduces unnecessary prompting** about whether you meant to be in a different directory

## Usage

1. Clone this repository
2. Run the included script to copy `GEMINI.md` to your home directory:
   ```bash
   ./copy_gemini.sh
   ```
3. The AI will now understand that home directory execution is intentional for system administration

## What's Included

- **GEMINI.md**: The main configuration file with system administration guidance
- **copy_gemini.sh**: Script to deploy the configuration to your home directory
- **README.md**: This documentation

## Environment Details

The configuration is tailored for:
- Ubuntu 25.04 with KDE Plasma
- Wayland display server
- Home-based development workflow with `~/repos` structure
- GitHub CLI integration and version control preferences

This setup helps maintain a clear distinction between general system work (from home) and project-specific development (from repository directories).
