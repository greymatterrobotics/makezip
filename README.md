`makezip.sh`
===========

##Installation

1. Clone
1. Clone pyenv to ~/.sr/pyenv from `git://srobo.org/pyenv.git`

`cd ~; mkdir -p .sr; git clone git://srobo.org/pyenv.git .sr/`

1. Add directory to $PATH `PATH=$PATH:~/.sr/tools`
1. Run `makezip.sh` to check

##Usage

1. Run `makezip.sh` to see usage information
1. Usage: `makezip.sh <dir of code>`

##Process

The steps this tool follows when you execute:

1. Pulls `pyenv`
1. Creates structure for zip at `/tmp/robot/`
1. Creates the `.pyenv-rev` and `user/.user-rev` crap files
1. Zips up all the crap
1. Copies it to `/Volumes/KINGSTON/`
1. Ejects `/Volumes/KINGSTON`

##Compatibility

Make for OS X.  Incompatible with Unix.

**Must edit lines 28 and 31 to point to the correct mount paths.**
