# This file is a template, and might need editing before it works on your project.
FROM centos@sha256:27525fe9e8a84f95baf88459070124628bf83da7216052ea9365fe46e93a102f

# Edit with mysql-client, postgresql-client, sqlite3, etc. for your needs.
# Or delete entirely if not needed.
RUN yum update -y && yum install epel-release -y && yum install ansible pyyaml openssh -y && yum clean all

