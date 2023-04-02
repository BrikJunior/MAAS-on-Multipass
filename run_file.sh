wget -qO- https://raw.githubusercontent.com/canonical/maas-multipass/main/maas.yml \ | multipass launch --name maas -c4 -m8GB -d32GB --cloud-init -
