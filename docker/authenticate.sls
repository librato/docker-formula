{% if salt['pillar.get']('dockerhub_auth') %}

echo {{ salt['pillar.get']('dockerhub_auth')['password'] }} | docker login -u {{ salt['pillar.get']('dockerhub_auth')['password'] }} --password-stdin:
  cmd.run

{% endif %}
