{% if salt['pillar.get']('dockerhub_auth') %}

docker login -u {{ salt['pillar.get']('dockerhub_auth')['username'] }} -p {{ salt['pillar.get']('dockerhub_auth')['password'] }}:
  cmd.run

{% endif %}
