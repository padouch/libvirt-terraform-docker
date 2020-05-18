FROM ubuntu:18.04
RUN useradd -ms /bin/bash oxus && \
    mkdir -p /home/oxus/.terraform.d/plugins && \
    cd /home/oxus/.terraform.d/plugins && \
    apt update && \
    apt install -y wget zip libvirt-clients openssh-server mkisofs openssh-server && \ 
    wget https://github.com/dmacvicar/terraform-provider-libvirt/releases/download/v0.6.2/terraform-provider-libvirt-0.6.2+git.1585292411.8cbe9ad0.Ubuntu_18.04.amd64.tar.gz && \
    tar xzvf terraform-provider-libvirt-0.6.2+git.1585292411.8cbe9ad0.Ubuntu_18.04.amd64.tar.gz && \
    cd /usr/bin/ && \
    wget https://releases.hashicorp.com/terraform/0.12.25/terraform_0.12.25_linux_amd64.zip && \
    unzip terraform_0.12.25_linux_amd64.zip

USER oxus
WORKDIR /home/oxus

