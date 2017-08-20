# A lightweight automation tool built for Linux machines
### No client/agent installation | Pure BASH over SSH | PLUG 'N' PLAY :rocket:

## Current Build: v1.0.2

## Workflow:
```
Seed(Input) >> Sow(Deploy) >> Crop(Success) >> Harvest(Snapshot) >> Fruit(Recovery)
```
## Terminology:
```
 Seed	: The input/instructions that runs on remote host/server

 Sow	: Sowing seeds in soil, is running input/instructions on remote host(s)

 Crop	: Crop is grown, indicates an successful deployment

 Harvest: Harvesting crop, is making a snapshot of successful deployment

 Fruit**: Snapshot is saved as fruit in compressed format which can be used for rollback/recovery

 Plow	: A scripting format used to build input, uses extension .plow
	  See few examples in (../seeds) directory

 Soil	: A host or group of hosts where input/instructions are executed
	  See few examples in (../soils) directory

 Canal	: A waterway to convey water for irrigation, temporary directory to hold any staging files as needed

**Harvest and Fruit functionalities aren't available in this release. Upcoming releases will support these functionalities.
```
## Pre-requisites:
```
 *Required passwordless SSH logon setup between local and remote servers
```
  Reference('how-to') [link](http://www.thegeekstuff.com/2008/11/3-steps-to-perform-ssh-login-without-password-using-ssh-keygen-ssh-copy-id) [Credits: [RAMESH NATARAJAN](https://www.facebook.com/thegeekstuff/)]

## Download & run instructions:
```
$ git clone https://github.com/disizjay/farmer.git
$ cd farmer
$ ./farmer help
```
## Usage instructions:
```
Usage: ./farmer [option] --user [username] --seed [seedname] --soil [soilname]

Options
   info : Displays information about existing seeds and soils
   sow  : Start deployment. Requires additional parameters --user, --seed and --soil
   help : Show this help

Additional Parameters
   --user : Username used to perform action on remote hosts
   --seed : Directory containing .plow files
   --soil : Directory containing host groups

Examples
   To dislay information about existing configuration
         $ ./farmer info --user root --seed example-user-make --soil example-development

   To run deployment
         $ ./farmer sow --user root --seed example-user-make --soil example-development

   For help
         $ ./farmer help

   It is always recommended to run 'info' before running 'sow'
```
## Incremental change log:
```
08/16/2017 : (v0.0.1)(alpha) Initial development build
08/18/2017 : (v1.0) First stable release
08/19/2017 : (v1.0.1) Background process manager
08/20/2017 : (v1.0.2) Implemented GC for process cleanup
```
## How to contibute ? 
Please see [contributing](https://github.com/disizjay/farmer/blob/master/CONTRIBUTING.md)

## Issues ?
Please submit issues [here](https://github.com/disizjay/farmer/issues/new)
