Setup Files
=========
1. On a fresh Ubuntu install (12.04 LTS or >) get git with:
`sudo apt-get install git`
2. CD to `$HOME` and clone this repository with:
`git clone https://github.com/mcpate/remote_setup-linux.git`
3. Run the shell script
`./remote_setup-linux/setup-root.sh`

`setup-root.sh` is the bare minimum you would want installed on a fresh linux vm.  The additional `.sh` files build upon 
this initial script and setup various environments.  Therefore, if you want to run an additional script to build additional
features, run the `setup-root.sh` script first.






