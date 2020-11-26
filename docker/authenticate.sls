{% if salt['pillar.get']('dockerhub_auth') %}

# Need to install gnupg2 and pass to satisfy dockers credtnials helper I think

creds installatio:
  pkg.installed:
    - pkgs:
      - gnupg2
      - pass

docker login -u {{ salt['pillar.get']('dockerhub_auth')['username'] }} -p {{ salt['pillar.get']('dockerhub_auth')['password'] }}:
  cmd.run

{% endif %}
