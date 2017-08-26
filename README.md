# A lightweight automation tool built for [Linux](https://en.wikipedia.org/wiki/Linux) machines
## No client/agent installation | Pure [BASH](https://en.wikipedia.org/wiki/Bash_(Unix_shell)) over [SSH](https://en.wikipedia.org/wiki/Secure_Shell) | PLUG 'N' PLAY :rocket:

### Workflow:
```
Seed(Input) > Sow(Deploy) > Crop(Success) > Harvest(Snapshot) > Fruit(Recovery)
```

### Terminology:
```
 Seed	: The input/instructions that runs on remote host/server

 Sow	: Sowing seeds in soil, is running input/instructions on remote host(s)

 Crop	: Crop is grown, indicates a successful deployment

 Harvest: Harvesting crop, is making a snapshot of successful deployment which can be used later in case of recovery

 Fruit	: Snapshot is saved as fruit in compressed format which can be used for recovery

 Plow	: A scripting format used to build input, uses extension .plow
	  See 'examples/seeds' in https://github.com/disizjay/node-farmer/tree/master/examples

 Soil	: A host or group of hosts where input/instructions are executed
	  See 'examples/soils' in https://github.com/disizjay/node-farmer/tree/master/examples

 Canal	: A waterway to convey water for irrigation, temporary directory which holds staging files and logs
```

### Download & install instructions:
install with npm
```
$ npm -g install node-farmer
$ cp -r /usr/lib/node_modules/node-farmer/examples/* .
$ farmer help
```
upgrade with npm (if already installed an older version)
```
$ npm -g update node-farmer
```
install without npm
```
$ git clone https://github.com/disizjay/node-farmer.git
$ cd node-farmer
$ cp -r examples/* .
$ ./farmer help
```

### Usage instructions:
```
Usage: farmer [option] --user [username] --seed [seedname] --soil [soilname]

// Options //
   info : Displays information about existing seeds and soils
   sow  : Start deployment. Requires additional parameters --user, --seed and --soil
   feed : Re-deploy from a saved fruit/snapshot
   help : Show this help

// Additional Parameters //
   --user : Username used to perform action on remote hosts
   --seed : Directory containing .plow files
   --soil : Directory containing host groups
   --fruit: Directory containing previously saved snapshots

// Examples //
   Pre-validates provided inputs(seeds/soils)
        $ farmer info --user root --seed example-user-make --soil example-development

   To run deployment
        $ farmer sow --user root --seed example-user-make --soil example-development

   To re-deploy from a snapshot
        $ farmer feed --fruit fruit-example-user-make-08-25-17.tar.gz

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
