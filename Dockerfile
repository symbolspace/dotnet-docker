FROM centos:7
MAINTAINER symbolspace@outlook.com

RUN yum update -y
RUN    rpm -Uvh https://packages.microsoft.com/config/centos/7/packages-microsoft-prod.rpm \
    && rpm --import /etc/pki/rpm-gpg/RPM* \
    && yum update -y

RUN yum install dotnet-sdk-3.1 \
    aspnetcore-runtime-3.1  \
    dotnet-runtime-3.1 -y