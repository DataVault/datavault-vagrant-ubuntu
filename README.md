# Vagrant for DataVault

## Vagrant

Vagrant is a tool that uses Oracle's VirtualBox to dynamically build configurable virtual machines. More information is available on the [Vagrant web site](http://www.vagrantup.com).

You should also find the step to [install Vagrant](https://www.vagrantup.com/docs/installation/) for your operating system ont their website.


## DataVault


A Jisc-funded project to create an archive management service for Research Data.  

Funded under the 'Research at Risk' Data Spring programme between March 2015 and August 2016.

To run this vagrant you need to get the [DataVault repository](https://github.com/DataVault/datavault) first:


```shell
git clone git@github.com:DataVault/datavault.git
```

## Run the example

First clone this repository:

```shell
git clone git@github.com:DataVault/datavault-vagrant-ubuntu.git
cd datavault-vagrant-ubuntu
```

You'll have to update the Vagrantfile to point at your datavault project directory.
Change this line in the `Vagrantfile`:


```
config.vm.synced_folder "/path/to/datavault/datavault-assembly/target/datavault-assembly-1.0-SNAPSHOT-assembly/datavault-home", "/vagrant_datavault-home"
```

From the project directory, type the following commands...


```shell
vagrant up
```

This will build the VirtualBox and set it up with the DataVault webapp, the API documentation and a few workers running in the background.

You should be able to access the web app from the host at: http://localhost:4567/datavault-webapp
The API doc at: http://localhost:4567/datavault-broker

You can now ssh into the VM with the following command:


```shell
vagrant ssh
```

## Development

_ To Be Completed _
