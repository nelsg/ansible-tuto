# Summary

Four hosts: _ansible_, _host0_, _host1_ and _host2_

* [Introduction](README.md)
* [00 Docker Setup](step-00/README.md): Copy ssh keys on hosts
  * ansible-playbook -c paramiko -i step-00/hosts step-00/setup.yml --ask-pass
  * (password is 'ansible')
* [01 Basic inventory](step-01/README.md): Ping
  * ansible -m ping all -i step-01/hosts
  * ansible -m ping host0.example.org -i step-01/hosts
  * ansible -m ping \*example\* -i step-01/hosts
  * ansible -m ping host[1-2]\* -i step-01/hosts
  * ansible -m ping all -i step-01/hosts -l host0.example.org
  * ansible -m ping all -i step-01/hosts -l \*example\*
  * ansible -m ping all -i step-01/hosts -l host[1-2]\*
* [02 First modules and facts](step-02/README.md)
  * ansible -i step-02/hosts -m shell -a 'uname -a' host0.example.org
  * ansible -i step-02/hosts -m copy -a 'src=/etc/hosts dest=/tmp/' host0.example.org
  * ansible -i step-02/hosts -m shell -a 'grep DISTRIB_RELEASE /etc/lsb-release' all
  * ansible -i step-02/hosts -m setup host0.example.org
  * ansible -i step-02/hosts -m setup -a 'filter=ansible_memtotal_mb' all
* [03 Groups and variables](step-03/README.md)
  * ansible -m ping all -i step-03/hosts
  * ansible -m ping web -i step-03/hosts
  * ansible -m ping ubuntu -i step-03/hosts
  * ansible -m ping debian -i step-03/hosts
  * ansible -m ping linux -i step-03/hosts
* [04 Playbooks](step-04/README.md)
  * ansible-playbook -i step-04/hosts -l host1.example.org step-04/apache.yml
* [05 Playbooks, pushing files on nodes](step-05/README.md)
  * ansible-playbook -i step-05/hosts -l host1.example.org step-05/apache.yml
* [06 Playbooks and failures](step-06/README.md)
  * ansible-playbook -i step-06/hosts -l host1.example.org step-06/apache.yml
* [07 Playbook conditionals](step-07/README.md)
  * ansible-playbook -i step-07/hosts -l host1.example.org step-07/apache.yml
  * ansible -i step-07/hosts -m service -a 'name=apache2 state=restarted' host1.example.org
* [08 Git module](step-08/README.md)
  * ansible-playbook -i step-08/hosts -l host1.example.org step-08/apache.yml
* [09 Extending to several hosts](step-09/README.md)
  * ansible-playbook -i step-09/hosts step-09/apache.yml
* [10 Templates](step-10/README.md)
  * ansible-playbook -i step-10/hosts step-10/apache.yml step-10/haproxy.yml
* [11 Variables again](step-11/README.md)
  * ansible-playbook -i step-11/hosts step-11/haproxy.yml
* [12 Migrating to roles](step-12/README.md)
  * ansible-playbook -i step-12/hosts step-12/site.yml
* [13 Using tags](step-13/README.md)
  * * ansible-playbook -i step-12/hosts step-12/site.yml -t package
* [14 Roles dependencies (TBD)](step-14/README.md)
* [15 Debugging (TBD)](step-15/README.md)
* [99 The end](step-99/README.md)
