# A lightweight automation tool built for [Linux](https://en.wikipedia.org/wiki/Linux) machines
## No client/agent installation | Pure [BASH](https://en.wikipedia.org/wiki/Bash_(Unix_shell)) over [SSH](https://en.wikipedia.org/wiki/Secure_Shell) | PLUG 'N' PLAY :rocket:

### Workflow:
```
Seed(Input) >> Sow(Deploy) >> Crop(Success) >> Harvest(Snapshot) >> Fruit(Recovery)
```

### Terminology:
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

**Fruit and Harvest functionalities aren't available in this release. Upcoming releases will support these functionalities
```

### Download & install instructions:
```
$ npm install node-farmer
```

### Usage instructions:
```
Usage: farmer [option] --user [username] --seed [seedname] --soil [soilname]

// Options //
   info : Displays information about existing seeds and soils
   sow  : Start deployment. Requires additional parameters --user, --seed and --soil
   help : Show this help

// Additional Parameters //
   --user : Username used to perform action on remote hosts
   --seed : Directory containing .plow files
   --soil : Directory containing hosts

// Examples //
   To dislay information about existing configuration
         $ farmer info --user root --seed example-user-make --soil example-development

   To run deployment
         $ farmer sow --user root --seed example-user-make --soil example-development

   For help
         $ farmer help

   It is always recommended to run 'info' before running 'sow'
```

### Examples:
See [examples](https://github.com/disizjay/node-farmer/tree/master/examples)

### How to contibute ? 
See [contributing](https://github.com/disizjay/node-farmer/blob/master/CONTRIBUTING.md)

### Issues ?
Please submit issues [here](https://github.com/disizjay/node-farmer/issues/new)
