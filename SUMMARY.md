# Summary

Four hosts: _ansible_, _host0_, _host1_ and _host2_

* Introduction
* 00 Docker Setup
  * ansible-playbook -i step-00/hosts step-00/setup.yml --ask-pass
  * (password is 'ansible')
* 01 Basic inventory
  * ansible -m ping all -i step-01/hosts
  * ansible -m ping host0 -i step-01/hosts
  * ansible -m ping \*host\* -i step-01/hosts
  * ansible -m ping host[1-2]\* -i step-01/hosts
  * ansible -m ping all -i step-01/hosts -l host0
  * ansible -m ping all -i step-01/hosts -l \*host\*
  * ansible -m ping all -i step-01/hosts -l host[1-2]\*
* 02 First modules and facts
  * ansible -i step-02/hosts -m shell -a 'uname -a' host0
  * ansible -i step-02/hosts -m copy -a 'src=/etc/hosts dest=/tmp/' host0
  * ansible -i step-02/hosts -m shell -a 'grep DISTRIB_RELEASE /etc/lsb-release' all
  * ansible -i step-02/hosts -m setup host0
  * ansible -i step-02/hosts -m setup -a 'filter=ansible_memtotal_mb' all
* 03 Groups and variables
  * ansible -m ping all -i step-03/hosts
  * ansible -m ping web -i step-03/hosts
  * ansible -m ping ubuntu -i step-03/hosts
  * ansible -m ping debian -i step-03/hosts
  * ansible -m ping linux -i step-03/hosts
* 04 Playbooks
  * ansible-playbook -i step-04/hosts step-04/apache.yml
* 05 Playbooks, pushing files on nodes
  * ansible-playbook -i step-05/hosts step-05/apache.yml
* 05.01 Listen
  * ansible-playbook -i step-05.01/hosts step-05.01/apache.yml
* 06 Playbooks and failures
  * ansible-playbook -i step-06/hosts step-06/apache.yml
* 07 Playbook conditionals
  * ansible-playbook -i step-07/hosts step-07/apache.yml
  * ansible -i step-07/hosts -m service -a 'name=apache2 state=restarted' host1
* 07.01 Playbook blocks
  * ansible-playbook -i step-07.01/hosts step-07.01/apache.yml
  * ansible -i step-07.01/hosts -m service -a 'name=apache2 state=restarted' host1
* 08 Git module
  * ansible-playbook -i step-08/hosts step-08/apache.yml
* 09 Extending to several hosts
  * ansible-playbook -i step-09/hosts step-09/apache.yml
* 10 Templates
  * ansible-playbook -i step-10/hosts step-10/apache.yml step-10/haproxy.yml
  * ssh host0
  * cat /etc/haproxy/haproxy.cfg
* 11 Variables again
  * ansible-playbook -i step-11/hosts step-11/apache.yml step-11/haproxy.yml
  * ssh host0
  * cat /etc/haproxy/haproxy.cfg
* 12 Migrating to roles
  * ansible-playbook -i step-12/hosts step-12/site.yml
* 13 Using tags
  * ansible-playbook -i step-13/hosts step-13/site.yml -t package
* [14 Roles dependencies (TBD)](step-14/README.md)
* [15 Debugging (TBD)](step-15/README.md)
* [99 The end](step-99/README.md)
