# This file is a template, and might need editing before it works on your project.
FROM centos:7

# Edit with mysql-client, postgresql-client, sqlite3, etc. for your needs.
# Or delete entirely if not needed.
RUN yum update -y && yum install epel-release -y && yum install ansible pyyaml openssh -y && yum clean all

