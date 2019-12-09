# Ansible SSH Shell Scripts

Scripts to make it easier to use ssh with ansible static inventories

## Installation

1. Clone repo
2. sudo make install

## Usage

### Setup

Set an environment variable named `ANSIBLE_ROOT` to the root path of your ansible repository.

## SSH

Use `invssh` to ssh into a node defined in your static inventory file. This script uses partial matches to find the correct inventory file and a target to match one of the inventory records.

Usage:

`invssh [-u <username>] <env> <target> [<ssh arg> ...]`

Ex:

`invssh -u username prod webnode1`
`invssh -u username prod webnode1 "ls -l"`

This will search the **production** inventory file for a line matching **webnode1** and get the IP address from that line and use ssh with that IP.

The `-u` argument is optional if your environment is setup to supply that argument via other configurations. 

### NOTE

If you use the `-u` argument, ensure that is the **first** argument to the `invssh` script.

## IP

The second script is `inv_ip` and is the tool that actually gets the IP address from the inventory file. The <env> and <target> from invssh are passed to this script.

If you want to simply display the IP address of a static asset, use this script.

Usage:

`inv_ip <env> <target>`

Ex:

`inv_ip prod webnode1`

