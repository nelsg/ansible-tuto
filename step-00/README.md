Ansible tutorial
================

To make the tutorial self-contained, a Vagrant file is provided. Vagrant makes
it easy to bootstrap barebones virtual machines with VirtualBox.

# Installing Docker

TODO

# Adding your SSH keys on the virtual machines

To follow this tutorial, you'll need to have your keys in VMs root's `authorized_keys`.
While this is not absolutely necessary (Ansible can use sudo, password authentication,
etc...), it will make things way easier.

Ansible is perfect for this and we will use it for the job. However I won't
explain what's happening for now. Just trust me.

```bash
ansible-playbook -c paramiko -i step-00/hosts step-00/setup.yml --ask-pass --become
```


When asked for password, enter _vagrant_. If you get "Connections refused" errors, please check the firewall settings of your machine.

To polish things up, it's better to have an ssh-agent running, and add your keys
to it (`ssh-add`).

**NOTE:** We are assuming that you're using Ansible version v2 on your local machine. If not you should upgrade ansible to v2 before using this repository

To check your ansible version use the command `ansible --version`. The output should be similar to the above:

    $ ansible --version
      ansible 2.0.0.2
        config file = /etc/ansible/ansible.cfg
        configured module search path = Default w/o overrides

Now head to the first step in [step-01](https://github.com/leucos/ansible-tuto/tree/master/step-01).
