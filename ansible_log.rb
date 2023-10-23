2023-10-23 11:10:03,673 p=3705 u=gonzales |  PLAY [Install Prometheus] ******************************************************
2023-10-23 11:10:03,697 p=3705 u=gonzales |  TASK [Gathering Facts gather_subset=!hardware,!facter,!ohai, gather_timeout=10] ***
2023-10-23 11:10:13,921 p=3705 u=gonzales |  fatal: [192.168.108]: UNREACHABLE! => {"changed": false, "msg": "Failed to connect to the host via ssh: ssh: connect to host 192.168.108 port 22: Connection timed out\r\n", "unreachable": true}
2023-10-23 11:10:13,921 p=3705 u=gonzales |  fatal: [192.168.106]: UNREACHABLE! => {"changed": false, "msg": "Failed to connect to the host via ssh: ssh: connect to host 192.168.106 port 22: Connection timed out\r\n", "unreachable": true}
2023-10-23 11:10:13,923 p=3705 u=gonzales |  PLAY RECAP *********************************************************************
2023-10-23 11:10:13,923 p=3705 u=gonzales |  192.168.106                : ok=0    changed=0    unreachable=1    failed=0   
2023-10-23 11:10:13,923 p=3705 u=gonzales |  192.168.108                : ok=0    changed=0    unreachable=1    failed=0   
2023-10-23 11:10:34,458 p=3721 u=gonzales |  192.168.106 | UNREACHABLE! => {
    "changed": false, 
    "msg": "Failed to connect to the host via ssh: ssh: connect to host 192.168.106 port 22: Connection timed out\r\n", 
    "unreachable": true
}
2023-10-23 11:10:34,459 p=3721 u=gonzales |  192.168.108 | UNREACHABLE! => {
    "changed": false, 
    "msg": "Failed to connect to the host via ssh: ssh: connect to host 192.168.108 port 22: Connection timed out\r\n", 
    "unreachable": true
}
2023-10-23 11:11:47,700 p=3748 u=gonzales |  192.168.108 | UNREACHABLE! => {
    "changed": false, 
    "msg": "Failed to connect to the host via ssh: ssh: connect to host 192.168.108 port 22: Connection timed out\r\n", 
    "unreachable": true
}
2023-10-23 11:11:47,706 p=3748 u=gonzales |  192.168.106 | UNREACHABLE! => {
    "changed": false, 
    "msg": "Failed to connect to the host via ssh: ssh: connect to host 192.168.106 port 22: Connection timed out\r\n", 
    "unreachable": true
}
2023-10-23 11:13:39,741 p=3829 u=gonzales |  192.168.106 | UNREACHABLE! => {
    "changed": false, 
    "msg": "Failed to connect to the host via ssh: ssh: connect to host 192.168.106 port 22: Connection timed out\r\n", 
    "unreachable": true
}
2023-10-23 11:13:39,745 p=3829 u=gonzales |  192.168.108 | UNREACHABLE! => {
    "changed": false, 
    "msg": "Failed to connect to the host via ssh: ssh: connect to host 192.168.108 port 22: Connection timed out\r\n", 
    "unreachable": true
}
2023-10-23 11:14:32,930 p=3862 u=gonzales |  192.168.56.108 | SUCCESS => {
    "changed": false, 
    "ping": "pong"
}
2023-10-23 11:14:33,208 p=3862 u=gonzales |  192.168.56.106 | SUCCESS => {
    "changed": false, 
    "ping": "pong"
}
2023-10-23 11:15:02,129 p=3910 u=gonzales |  PLAY [Install Prometheus] ******************************************************
2023-10-23 11:15:02,136 p=3910 u=gonzales |  TASK [Gathering Facts gather_subset=!hardware,!facter,!ohai, gather_timeout=10] ***
2023-10-23 11:15:02,701 p=3910 u=gonzales |  ok: [192.168.56.106]
2023-10-23 11:15:02,743 p=3910 u=gonzales |  ok: [192.168.56.108]
2023-10-23 11:15:02,746 p=3910 u=gonzales |  TASK [common : Update package cache for Ubuntu state=latest, update_cache=True, name=*] ***
2023-10-23 11:15:02,768 p=3910 u=gonzales |  skipping: [192.168.56.108]
2023-10-23 11:15:13,639 p=3910 u=gonzales |  fatal: [192.168.56.106]: FAILED! => {"changed": false, "msg": "Unable to find APTITUDE in path. Please make sure to have APTITUDE in path or use 'force_apt_get=True'"}
2023-10-23 11:15:13,642 p=3910 u=gonzales |  TASK [common : Update package cache for CentOS state=latest, name=*] ***********
2023-10-23 11:16:23,725 p=3910 u=gonzales |  changed: [192.168.56.108]
2023-10-23 11:16:23,729 p=3910 u=gonzales |  TASK [common : Install common dependencies state=present, name={{ item }}] *****
2023-10-23 11:16:45,025 p=3910 u=gonzales |  ok: [192.168.56.108] => (item=unzip)
2023-10-23 11:16:45,029 p=3910 u=gonzales |  TASK [prometheus : Import Grafana GPG Key for Ubuntu url=https://packages.grafana.com/gpg.key] ***
2023-10-23 11:16:45,043 p=3910 u=gonzales |  skipping: [192.168.56.108]
2023-10-23 11:16:45,047 p=3910 u=gonzales |  TASK [prometheus : Add Prometheus APT repository for Ubuntu repo=deb https://packages.grafana.com/oss/deb stable main] ***
2023-10-23 11:16:45,065 p=3910 u=gonzales |  skipping: [192.168.56.108]
2023-10-23 11:16:45,069 p=3910 u=gonzales |  TASK [prometheus : Add Prometheus YUM repository for CentOS gpgcheck=False, description=Prometheus repository, name=prometheus, baseurl=https://packagecloud.io/prometheus-rpm/release/el/{{ ansible_distribution_major_version }}/$basearch] ***
2023-10-23 11:16:45,416 p=3910 u=gonzales |  [0;31m--- before: /etc/yum.repos.d/prometheus.repo[0m
[0;31m[0m[0;32m+++ after: /etc/yum.repos.d/prometheus.repo[0m
[0;32m[0m[0;36m@@ -0,0 +1,5 @@[0m
[0;36m[0m[0;32m+[prometheus][0m
[0;32m[0m[0;32m+baseurl = https://packagecloud.io/prometheus-rpm/release/el/7/$basearch[0m
[0;32m[0m[0;32m+gpgcheck = 0[0m
[0;32m[0m[0;32m+name = Prometheus repository[0m
[0;32m[0m[0;32m+[0m
[0;32m[0m

2023-10-23 11:16:45,417 p=3910 u=gonzales |  changed: [192.168.56.108]
2023-10-23 11:16:45,420 p=3910 u=gonzales |  TASK [prometheus : Install Prometheus in Ubuntu state=present, name=prometheus] ***
2023-10-23 11:16:45,430 p=3910 u=gonzales |  skipping: [192.168.56.108]
2023-10-23 11:16:45,434 p=3910 u=gonzales |  TASK [prometheus : Install Prometheus in CentOS state=present, name=prometheus] ***
2023-10-23 11:16:58,098 p=3910 u=gonzales |  changed: [192.168.56.108]
2023-10-23 11:16:58,099 p=3910 u=gonzales |  PLAY RECAP *********************************************************************
2023-10-23 11:16:58,100 p=3910 u=gonzales |  192.168.56.106             : ok=1    changed=0    unreachable=0    failed=1   
2023-10-23 11:16:58,100 p=3910 u=gonzales |  192.168.56.108             : ok=5    changed=3    unreachable=0    failed=0   
2023-10-23 11:18:41,153 p=4028 u=gonzales |  PLAY [Install Prometheus] ******************************************************
2023-10-23 11:18:41,166 p=4028 u=gonzales |  TASK [Gathering Facts gather_subset=!hardware,!facter,!ohai, gather_timeout=10] ***
2023-10-23 11:18:41,976 p=4028 u=gonzales |  ok: [192.168.56.106]
2023-10-23 11:18:42,089 p=4028 u=gonzales |  ok: [192.168.56.108]
2023-10-23 11:18:42,092 p=4028 u=gonzales |  TASK [common : Update package cache for Ubuntu state=latest, name=*] ***********
2023-10-23 11:18:42,114 p=4028 u=gonzales |  skipping: [192.168.56.108]
2023-10-23 11:18:42,790 p=4028 u=gonzales |  fatal: [192.168.56.106]: FAILED! => {"changed": false, "msg": "Unable to find APTITUDE in path. Please make sure to have APTITUDE in path or use 'force_apt_get=True'"}
2023-10-23 11:18:42,795 p=4028 u=gonzales |  TASK [common : Update package cache for CentOS state=latest, name=*] ***********
2023-10-23 11:18:44,519 p=4028 u=gonzales |  ok: [192.168.56.108]
2023-10-23 11:18:44,522 p=4028 u=gonzales |  TASK [common : Install common dependencies state=present, name={{ item }}] *****
2023-10-23 11:18:45,336 p=4028 u=gonzales |  ok: [192.168.56.108] => (item=unzip)
2023-10-23 11:18:45,340 p=4028 u=gonzales |  TASK [prometheus : Import Grafana GPG Key for Ubuntu url=https://packages.grafana.com/gpg.key] ***
2023-10-23 11:18:45,353 p=4028 u=gonzales |  skipping: [192.168.56.108]
2023-10-23 11:18:45,357 p=4028 u=gonzales |  TASK [prometheus : Add Prometheus APT repository for Ubuntu repo=deb https://packages.grafana.com/oss/deb stable main] ***
2023-10-23 11:18:45,372 p=4028 u=gonzales |  skipping: [192.168.56.108]
2023-10-23 11:18:45,376 p=4028 u=gonzales |  TASK [prometheus : Add Prometheus YUM repository for CentOS gpgcheck=False, description=Prometheus repository, name=prometheus, baseurl=https://packagecloud.io/prometheus-rpm/release/el/{{ ansible_distribution_major_version }}/$basearch] ***
2023-10-23 11:18:45,693 p=4028 u=gonzales |  ok: [192.168.56.108]
2023-10-23 11:18:45,696 p=4028 u=gonzales |  TASK [prometheus : Install Prometheus in Ubuntu state=present, name=prometheus] ***
2023-10-23 11:18:45,710 p=4028 u=gonzales |  skipping: [192.168.56.108]
2023-10-23 11:18:45,714 p=4028 u=gonzales |  TASK [prometheus : Install Prometheus in CentOS state=present, name=prometheus] ***
2023-10-23 11:18:46,515 p=4028 u=gonzales |  ok: [192.168.56.108]
2023-10-23 11:18:46,516 p=4028 u=gonzales |  PLAY RECAP *********************************************************************
2023-10-23 11:18:46,517 p=4028 u=gonzales |  192.168.56.106             : ok=1    changed=0    unreachable=0    failed=1   
2023-10-23 11:18:46,517 p=4028 u=gonzales |  192.168.56.108             : ok=5    changed=0    unreachable=0    failed=0   
2023-10-23 11:20:12,017 p=4189 u=gonzales |  PLAY [Install Prometheus] ******************************************************
2023-10-23 11:20:12,026 p=4189 u=gonzales |  TASK [Gathering Facts gather_subset=!hardware,!facter,!ohai, gather_timeout=10] ***
2023-10-23 11:20:12,681 p=4189 u=gonzales |  ok: [192.168.56.106]
2023-10-23 11:20:12,852 p=4189 u=gonzales |  ok: [192.168.56.108]
2023-10-23 11:20:12,857 p=4189 u=gonzales |  TASK [common : Update package cache for Ubuntu state=latest, name=*] ***********
2023-10-23 11:20:12,873 p=4189 u=gonzales |  skipping: [192.168.56.108]
2023-10-23 11:20:13,496 p=4189 u=gonzales |  fatal: [192.168.56.106]: FAILED! => {"changed": false, "msg": "Unable to find APTITUDE in path. Please make sure to have APTITUDE in path or use 'force_apt_get=True'"}
2023-10-23 11:20:13,499 p=4189 u=gonzales |  TASK [common : Update package cache for CentOS state=latest, name=*] ***********
2023-10-23 11:20:14,315 p=4189 u=gonzales |  ok: [192.168.56.108]
2023-10-23 11:20:14,318 p=4189 u=gonzales |  TASK [common : Install common dependencies state=present, name={{ item }}] *****
2023-10-23 11:20:15,178 p=4189 u=gonzales |  ok: [192.168.56.108] => (item=unzip)
2023-10-23 11:20:15,181 p=4189 u=gonzales |  TASK [prometheus : Import Grafana GPG Key for Ubuntu url=https://packages.grafana.com/gpg.key] ***
2023-10-23 11:20:15,193 p=4189 u=gonzales |  skipping: [192.168.56.108]
2023-10-23 11:20:15,196 p=4189 u=gonzales |  TASK [prometheus : Add Prometheus APT repository for Ubuntu repo=deb https://packages.grafana.com/oss/deb stable main] ***
2023-10-23 11:20:15,211 p=4189 u=gonzales |  skipping: [192.168.56.108]
2023-10-23 11:20:15,214 p=4189 u=gonzales |  TASK [prometheus : Add Prometheus YUM repository for CentOS gpgcheck=False, description=Prometheus repository, name=prometheus, baseurl=https://packagecloud.io/prometheus-rpm/release/el/{{ ansible_distribution_major_version }}/$basearch] ***
2023-10-23 11:20:15,539 p=4189 u=gonzales |  ok: [192.168.56.108]
2023-10-23 11:20:15,542 p=4189 u=gonzales |  TASK [prometheus : Install Prometheus in Ubuntu state=present, name=prometheus] ***
2023-10-23 11:20:15,557 p=4189 u=gonzales |  skipping: [192.168.56.108]
2023-10-23 11:20:15,560 p=4189 u=gonzales |  TASK [prometheus : Install Prometheus in CentOS state=present, name=prometheus] ***
2023-10-23 11:20:16,329 p=4189 u=gonzales |  ok: [192.168.56.108]
2023-10-23 11:20:16,330 p=4189 u=gonzales |  PLAY RECAP *********************************************************************
2023-10-23 11:20:16,331 p=4189 u=gonzales |  192.168.56.106             : ok=1    changed=0    unreachable=0    failed=1   
2023-10-23 11:20:16,331 p=4189 u=gonzales |  192.168.56.108             : ok=5    changed=0    unreachable=0    failed=0   
2023-10-23 11:25:52,374 p=4451 u=gonzales |  PLAY [Install Prometheus] ******************************************************
2023-10-23 11:25:52,382 p=4451 u=gonzales |  TASK [Gathering Facts gather_subset=!hardware,!facter,!ohai, gather_timeout=10] ***
2023-10-23 11:25:53,109 p=4451 u=gonzales |  ok: [192.168.56.106]
2023-10-23 11:25:53,318 p=4451 u=gonzales |  ok: [192.168.56.108]
2023-10-23 11:25:53,322 p=4451 u=gonzales |  TASK [common : Update package cache for Ubuntu state=latest, name=*, force_apt_get=True] ***
2023-10-23 11:25:53,343 p=4451 u=gonzales |  skipping: [192.168.56.108]
2023-10-23 11:25:54,423 p=4451 u=gonzales |  ok: [192.168.56.106]
2023-10-23 11:25:54,426 p=4451 u=gonzales |  TASK [common : Update package cache for CentOS state=latest, name=*] ***********
2023-10-23 11:25:54,437 p=4451 u=gonzales |  skipping: [192.168.56.106]
2023-10-23 11:25:55,320 p=4451 u=gonzales |  ok: [192.168.56.108]
2023-10-23 11:25:55,324 p=4451 u=gonzales |  TASK [common : Install common dependencies state=present, name={{ item }}] *****
2023-10-23 11:25:56,078 p=4451 u=gonzales |  ok: [192.168.56.106] => (item=unzip)
2023-10-23 11:25:56,327 p=4451 u=gonzales |  ok: [192.168.56.108] => (item=unzip)
2023-10-23 11:25:56,334 p=4451 u=gonzales |  TASK [prometheus : Import Grafana GPG Key for Ubuntu url=https://packages.grafana.com/gpg.key] ***
2023-10-23 11:25:56,362 p=4451 u=gonzales |  skipping: [192.168.56.108]
2023-10-23 11:25:58,239 p=4451 u=gonzales |  changed: [192.168.56.106]
2023-10-23 11:25:58,242 p=4451 u=gonzales |  TASK [prometheus : Add Prometheus APT repository for Ubuntu repo=deb https://packages.grafana.com/oss/deb stable main] ***
2023-10-23 11:25:58,268 p=4451 u=gonzales |  skipping: [192.168.56.108]
2023-10-23 11:26:04,917 p=4451 u=gonzales |  [0;31m--- before: /dev/null[0m
[0;31m[0m[0;32m+++ after: /etc/apt/sources.list.d/packages_grafana_com_oss_deb.list[0m
[0;32m[0m[0;36m@@ -0,0 +1 @@[0m
[0;36m[0m[0;32m+deb https://packages.grafana.com/oss/deb stable main[0m
[0;32m[0m

2023-10-23 11:26:04,917 p=4451 u=gonzales |  changed: [192.168.56.106]
2023-10-23 11:26:04,920 p=4451 u=gonzales |  TASK [prometheus : Add Prometheus YUM repository for CentOS gpgcheck=False, description=Prometheus repository, name=prometheus, baseurl=https://packagecloud.io/prometheus-rpm/release/el/{{ ansible_distribution_major_version }}/$basearch] ***
2023-10-23 11:26:04,930 p=4451 u=gonzales |  skipping: [192.168.56.106]
2023-10-23 11:26:05,277 p=4451 u=gonzales |  ok: [192.168.56.108]
2023-10-23 11:26:05,280 p=4451 u=gonzales |  TASK [prometheus : Install Prometheus in Ubuntu state=present, name=prometheus] ***
2023-10-23 11:26:05,296 p=4451 u=gonzales |  skipping: [192.168.56.108]
2023-10-23 11:26:24,472 p=4451 u=gonzales |  The following package was automatically installed and is no longer required:
  libllvm7
Use 'sudo apt autoremove' to remove it.
The following additional packages will be installed:
  libjs-bootstrap libjs-d3 libjs-eonasdan-bootstrap-datetimepicker
  libjs-jquery-hotkeys libjs-moment libjs-mustache libjs-rickshaw
  prometheus-node-exporter
The following NEW packages will be installed:
  libjs-bootstrap libjs-d3 libjs-eonasdan-bootstrap-datetimepicker
  libjs-jquery-hotkeys libjs-moment libjs-mustache libjs-rickshaw prometheus
  prometheus-node-exporter
0 upgraded, 9 newly installed, 0 to remove and 0 not upgraded.
2023-10-23 11:26:24,472 p=4451 u=gonzales |  changed: [192.168.56.106]
2023-10-23 11:26:24,475 p=4451 u=gonzales |  TASK [prometheus : Install Prometheus in CentOS state=present, name=prometheus] ***
2023-10-23 11:26:24,485 p=4451 u=gonzales |  skipping: [192.168.56.106]
2023-10-23 11:26:25,336 p=4451 u=gonzales |  ok: [192.168.56.108]
2023-10-23 11:26:25,337 p=4451 u=gonzales |  PLAY RECAP *********************************************************************
2023-10-23 11:26:25,337 p=4451 u=gonzales |  192.168.56.106             : ok=6    changed=3    unreachable=0    failed=0   
2023-10-23 11:26:25,337 p=4451 u=gonzales |  192.168.56.108             : ok=5    changed=0    unreachable=0    failed=0   
