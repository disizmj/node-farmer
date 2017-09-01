# A lightweight automation tool built for Linux machines
### ** No client/agent | Pure BASH over SSH | PLUG 'N' PLAY :rocket: **

[![npm](https://img.shields.io/badge/npm-install-orange.svg)](https://www.npmjs.com/package/node-farmer)
[![HitCount](https://hitt.herokuapp.com/disizjay/node-farmer.svg)](https://github.com/disizjay/node-farmer)
[![npm](https://img.shields.io/npm/l/express.svg)](https://github.com/disizjay/node-farmer/blob/master/LICENSE)

### // Demo //
![node-farmer demo](https://raw.githubusercontent.com/disizjay/node-farmer/master/demo/execution.gif)

### Workflow
Standard workflow
```
Seed(Input) > Sow(Deploy) > Fruit(Snapshot)
```
Reusability workflow
```
Fruit(Snapshot) > Sow(Deploy)
```

### Terminology
```
 Seed	: The input/instructions that runs on remote host/server

 Plow   : Scripting format used to build input/seed, uses extension .plow

 Soil   : List of remote hosts where input/instructions are executed

 Sow	: Deploy input/instructions on remote host(s)

 Fruit	: Snapshot/archive of configuration files(seeds & soils) from a successful deployment, can be reused in future

 Feed   : Re-deploy using an existing snapshot

 Canal	: Directory to store runtime temporary files and logs
```

### Pre-requisites
```
For Redhat/CentOS
$ yum install -y psmisc

For Ubuntu
$ apt-get install -y psmisc
```

### Download & install instructions
Minimal Install // NO ROOT //
```
$ curl https://raw.githubusercontent.com/disizjay/node-farmer/master/farmer > farmer; chmod +x farmer; mkdir canal fruits soils seeds;
$ ./farmer help
```
Install with git // NO ROOT //
```
$ git clone https://github.com/disizjay/node-farmer.git
$ cd node-farmer
$ cp -r examples/* .
$ ./farmer help
```
Install with npm // ROOT REQUIRED //
```
For Redhat/CentOS
$ curl --silent --location https://rpm.nodesource.com/setup_6.x | sudo bash -
$ yum install -y nodejs && yum install -y gcc-c++ make
$ npm -g install node-farmer
$ cp -r /usr/lib/node_modules/node-farmer/examples/* .
$ farmer help

For Ubuntu
$ apt-get install -y npm
$ npm -g install node-farmer
$ cp -r /usr/lib/node_modules/node-farmer/examples/* .
$ farmer help
```
Upgrade with npm (if already installed an older version) // ROOT REQUIRED //
```
$ npm -g update node-farmer
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

### Usage instructions
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

### Examples
See [examples](https://github.com/disizjay/node-farmer/tree/master/examples)
& Sample [logs](https://github.com/disizjay/node-farmer/tree/master/logs)

### How to contibute ? 
See [contributing](https://github.com/disizjay/node-farmer/blob/master/CONTRIBUTING.md)

### Issues ?
Please submit issues [here](https://github.com/disizjay/node-farmer/issues/new)

### License
```
MIT License

Copyright (c) 2017 MANIKUMAR JUTTUKONDA

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
