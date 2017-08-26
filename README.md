# A lightweight automation tool built for [Linux](https://en.wikipedia.org/wiki/Linux) machines
## No client/agent installation | Pure [BASH](https://en.wikipedia.org/wiki/Bash_(Unix_shell)) over [SSH](https://en.wikipedia.org/wiki/Secure_Shell) | PLUG 'N' PLAY :rocket:

### Workflow:
Standard workflow
```
Seed(Input) > Sow(Deploy) > Fruit(Snapshot)
```
Reusability workflow
```
Fruit(Snapshot) > Sow(Deploy)
```

### Terminology:
```
 Seed	: The input/instructions that runs on remote host/server

 Plow   : Scripting format used to build input/seed, uses extension .plow

 Soil   : List of remote hosts where input/instructions are executed

 Sow	: Runs input/instructions on remote host(s)

 Fruit	: Snapshot/archive of configuration files(seeds & soils) from a successful deployment, which can be reused in future

 Canal	: Directory to store runtime temporary files and logs
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

### Getting started
```
Step 1: Download and install node-farmer from above install instructions

Step 2: Go to 'seeds' directory and create a new directory and then create .plow file(s). Plow files will contain remote commands you intend to run on remote hosts
 	.plow syntax: 
		arg::: - to specify variables (example - arg:::userid="joblo"), variable(like $userid) can be used in any of the commands within a .plow file
		command::: - to specify commands (example - command:::yum install httpd) 
	arg::: and command::: can be in any order in .plow file but should be seperated by '\n' i.e., One arg::: per line, One command::: per line

	See 'examples/seeds' in https://github.com/disizjay/node-farmer/tree/master/examples

Step 3: Go to 'soils' directory, create a new directory and then create 'hosts' file with list of remote hostnames or IP addresses 
	Upon running deployment all the commands given in .plow files will be executed on all remote hosts in parallel
	Make sure to setup passwrordless SSH on the host running node-farmer to all the remote hosts

	See 'examples/soils' in https://github.com/disizjay/node-farmer/tree/master/examples

Step 4: You should be all set at this point
	Read below usage instructions for execution syntax
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
   --fruit: Directory containing previously saved snapshots (only used with 'feed' option)

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
