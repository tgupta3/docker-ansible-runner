# This file is a template, and might need editing before it works on your project.
FROM centos@sha256:e4ca2ed0202e76be184e75fb26d14bf974193579039d5573fb2348664deef76e


# Edit with mysql-client, postgresql-client, sqlite3, etc. for your needs.
# Or delete entirely if not needed.
RUN yum update -y && yum install epel-release -y && yum install ansible pyyaml openssh -y && yum clean all

