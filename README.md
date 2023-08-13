# MAAS-on-Multipass
This is repository to learn and use Multipass, MAAS using LXD.

### To get started install Multipass on MacOS

### Open you command line 

```bash run_file.sh```

```multipass list```

```mutlipass start maas```

###### Copy the IP for maas and open "http://_IP_:5240/MAAS/"

- Login using "admin" and username and password both

### Error Handling:

If you are using MacOS then as now of now August of 23' has no KVM support. 
Easy way to check that is by installing multipass inside of a multipass instance.

Your results should look this this:

<img width="414" alt="Screen Shot 2023-08-13 at 6 30 15 PM" src="https://github.com/brikjr/MAAS-on-Multipass/assets/81532347/d1e0b68a-c9b3-4817-bbdc-1acea455b2f3">

### - Nested virtualization doesn't work on MacOS.

- If you are unable to create a VM from KVM:
> Do this in your command line
- ``` multipass exec maas -- sudo apt-get install cpu-checker ```
- ``` multipass exec maas -- kvm-ok ```
> If your results shows: "INFO: Your CPU does not support KVM extensions"
- You need to install KVM
- ``` multipass exec maas -- sudo apt-get install qemu-system-x86 libvirt-daemon-system virtinst bridge-utils ```


- ```multipass exec maas -- lsmod | grep kvm``` 
> To check if there is KVM; If it returns no output follow next step
- ```multipass exec maas -- sudo modprobe kvm```
- ```multipass exec maas -- which kvm``` 

> This should show where your KVM is; it should be in dev/kvm; If it is in /usr/bin
- ```multipass exec maas -- sudo mknod /dev/kvm c 10 232```
- ```multipass exec maas -- ls -l /dev/kvm```

#### Multipass commands

```multipass launch --name foo```

```multipass exec foo -- <ubuntu command>```

```multipass stop foo```

```multipass start foo```

```multipass delete --purge foo```

```multipass delete --purge --all```
