docker-containers:
  lookup:
    parity:
      image: "library/ubuntu:16.04"
      cmd: bash /opt/compileparity/build_parity.sh
      runoptions:
        - "-e MY_ENV=warn"
        - "--log-driver=syslog"
        - "-p 2345:2345"
        - "-v /opt/DockerHost/docker-formula/buildparity.sh:/opt/compileparity"
        - "--rm"
