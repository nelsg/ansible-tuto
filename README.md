Ansible tutorial
================

## Cloning the tutorial

```bash
git clone https://github.com/nelsg/ansible-tuto.git
cd ansible-tuto
```

## Using Docker with the tutorial

Minimum Docker version: 1.10.1

* Build and launch environment with `./env_up.sh`, any previous environment is destroyed :

```bash
cd ansible-tuto
./env_up.sh
# password is : 'ansible'
```

* Clean every `./env_clean.sh`

## Contents

[Terminology](https://docs.ansible.com/ansible/glossary.html):
 - [command or action](https://docs.ansible.com/ansible/intro_adhoc.html): [ansible module](https://docs.ansible.com/ansible/modules.html) like just a shell command. Intro in [step-02](https://github.com/leucos/ansible-tuto/tree/master/step-02).
 - task: it's combine an action (a module and its arguments) with a name and optionally some other keywords (like looping directives).
 - [playbook](https://docs.ansible.com/ansible/playbooks_intro.html): an yaml file contains roles executed in sequence, and eventually individual tasks. Intro in [step-04](https://github.com/leucos/ansible-tuto/tree/master/step-04).
 - [role](https://docs.ansible.com/ansible/playbooks_roles.html): an organisational unit grouping tasks together in order to install a piece of software. Intro in [step-12](https://github.com/leucos/ansible-tuto/tree/master/step-12).

Just in case you want to skip to a specific step, here is a topic table of contents.

- [00. Docker Setup](https://github.com/leucos/ansible-tuto/tree/master/step-00)
- [01. Basic inventory](https://github.com/leucos/ansible-tuto/tree/master/step-01)
- [02. First modules and facts](https://github.com/leucos/ansible-tuto/tree/master/step-02)
- [03. Groups and variables](https://github.com/leucos/ansible-tuto/tree/master/step-03)
- [04. Playbooks](https://github.com/leucos/ansible-tuto/tree/master/step-04)
- [05. Playbooks, pushing files on nodes](https://github.com/leucos/ansible-tuto/tree/master/step-05)
- [06. Playbooks and failures](https://github.com/leucos/ansible-tuto/tree/master/step-06)
- [07. Playbook conditionals](https://github.com/leucos/ansible-tuto/tree/master/step-07)
- [08. Git module](https://github.com/leucos/ansible-tuto/tree/master/step-08)
- [09. Extending to several hosts](https://github.com/leucos/ansible-tuto/tree/master/step-09)
- [10. Templates](https://github.com/leucos/ansible-tuto/tree/master/step-10)
- [11. Variables again](https://github.com/leucos/ansible-tuto/tree/master/step-11)
- [12. Migrating to roles](https://github.com/leucos/ansible-tuto/tree/master/step-12)
- [13. Using tags](https://github.com/leucos/ansible-tuto/tree/master/step-13)
- [14. Roles dependencies (TBD)](https://github.com/leucos/ansible-tuto/tree/master/step-14)
- [15. Debugging (TBD)](https://github.com/leucos/ansible-tuto/tree/master/step-15)
- [99. The end](https://github.com/leucos/ansible-tuto/tree/master/step-99)
