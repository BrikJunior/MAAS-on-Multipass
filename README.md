# MAAS-on-Multipass
This is repository to learn and use Multipass, MAAS on LXD and all the commands you need

### To get started install Multipass on MacOS

### Open you command line 

```bash run_file.sh```

```multipass list```

###### Copy the IP for maas and open "http://_IP_:5240/MAAS/"

- Login using "admin" and username and password both

### Error Handling:

- If you are unable to create a VM from KVM:
- Do this in your command line
- ``` multipass exec maas -- sudo apt-get install cpu-checker ```
- ``` multipass exec maas -- kvm-ok ```
- If your results shows: "INFO: Your CPU does not support KVM extensions"
- You need to install KVM
- ``` multipass exec maas -- sudo apt-get install qemu-system-x86 libvirt-daemon-system virtinst bridge-utils ```

#### Multipass commands

```multipass launch --name foo```

```multipass exec foo -- <ubuntu command>``` - Not really useful imo

```multipass stop foo```

```multipass start foo```

```multipass delete --purge foo```

```multipass delete --purge --all```
