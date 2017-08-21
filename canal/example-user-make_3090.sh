#!/bin/sh -e

#/root/farmer/seeds/example-user-make/user-make-dir.plow
user_name="demouser";
dir_name="/root/demodir";
file_name="file_demo";
useradd $user_name ; if [ $? -ne 0 ]; then echo farm:::failed; exit 1; else echo farm:::success; fi
mkdir -p $dir_name ; if [ $? -ne 0 ]; then echo farm:::failed; exit 1; else echo farm:::success; fi
touch $dir_name/$file_name ; if [ $? -ne 0 ]; then echo farm:::failed; exit 1; else echo farm:::success; fi
echo "welcome to farmer" > $dir_name/$file_name ; if [ $? -ne 0 ]; then echo farm:::failed; exit 1; else echo farm:::success; fi
