FROM centos:7

COPY artifact-registry-plugin.repo /etc/yum.repos.d/artifact-registry-plugin.repo
RUN rpm --import https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg \
    && yum -y install epel-release \
    && yum -y install yum-plugin-artifact-registry

COPY artifact-registry.conf /etc/yum/pluginconf.d/artifact-registry.conf
COPY gar-service-account.json /etc/yum/gar-service-account.json
RUN echo "proxy = https://internal-and-external:3128" >> /etc/yum.conf
COPY yum-repo.repo /etc/yum.repos.d/yum-repo.repo
