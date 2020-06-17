FROM symbolspace/dotnet:3.1-centos7

MAINTAINER symbolspace@outlook.com

RUN yum update -y
RUN    yum install https://download.postgresql.org/pub/repos/yum/reporpms/EL-7-x86_64/pgdg-redhat-repo-latest.noarch.rpm -y \
    && rpm --import /etc/pki/rpm-gpg/RPM* \
    && yum update -y

RUN yum install \
    postgresql12-contrib \
    postgresql12-libs \
    postgresql12-server -y
