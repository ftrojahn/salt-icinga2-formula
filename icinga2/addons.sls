{% set distrib_codename = grains.lsb_distrib_codename %}
checks_and_plugins:
  pkg.installed:
    - pkgs:
      {% if distrib_codename == 'buster' %}
      - monitoring-plugins-basic
      - monitoring-plugins-standard
      - libmonitoring-plugin-perl
      - nagios-plugins-contrib
      {% elif distrib_codename == 'xenial' %}
      - monitoring-plugins-standard ### is not available in ubuntu 14.04
      - libmonitoring-plugin-perl ### is not available in ubuntu 14.04
      - nagios-plugins-contrib
      - nagios-plugins-standard
      {% else %}
      - nagios-plugins-contrib
      - nagios-plugins-standard
      {% endif %}
    - install_recommends: False
