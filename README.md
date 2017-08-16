## A lightweight automation tool built for Linux machines
Minimal Linux is OK. 
Client/Agent install NOT required.
Easy to use, pure BASH program.

### Current Version: v0.0.1-alpha

### Workflow:

Seed(Input) >> Sow(Deploy) >> Crop(Success) >> Harvest(Snapshot) >> Fruit(Recovery)

### Terminology:
```
 Seed : The input/instructions that runs on remote host/server

 Sow : Sowing seeds in soil, is running input/instructions on remote host(s)

 Crop : Crop is grown, indicates an successful deployment

 Harvest : Harvesting crop, is making a snapshot of successful deployment

 Fruit	: Snapshot is saved as fruit in compressed format which can be used for rollback/recovery

 Plow : A scripting format used to build input, uses extension .plow

 Soil : A host or group of hosts where input/instructions are executed

 Canal	: A waterway to convey water for irrigation, temporary directory to hold any staging files as needed
```
### Download & install instructions:
```
$ git clone https://github.com/clouderscloud/farmer.git
$ cd farmer
$ ./farmer help
```
### Usage instructions:
```
Usage: ./farmer [option] -user [username] -seed [seedname] -soil [soilname]

Options
   info : Displays information about existing seeds and soils
   sow  : Start deployment. Requires additional parameters -user, -seed and -soil
   help : Show this help

Additional Parameters
   -user : Username used to perform action on remote hosts
   -seed : Directory containing .plow files
   -soil : Directory containing host groups

Examples
   To run deployment
         $ ./farmer sow -user root -seed install-webserver -soil development
   To dislay information about existing configuration
         $ ./farmer info
   For help
         $ ./farmer help

   It is always recommended to run 'info' before running 'sow'
```
### Incremental change log:
```
08/16/2017 : (v0.0.1)(alpha) Initial development build
```
