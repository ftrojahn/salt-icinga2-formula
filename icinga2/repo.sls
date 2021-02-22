icinga2-repo:
  pkgrepo.managed:
    - humanname: icinga2
    - name: deb http://packages.icinga.com/{{ grains.lsb_distrib_id|lower }} icinga-{{ grains.lsb_distrib_codename }} main
    - file: /etc/apt/sources.list.d/icinga2.list
    - key_url: http://packages.icinga.com/icinga.key

