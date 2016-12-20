#
# GitLab Docker container
#
# Version 0.1

FROM sameersbn/gitlab:8.13.1
# FROM quay.io/sameersbn/gitlab:8.1.2
MAINTAINER Joseph Lutz <Joseph.Lutz@novatechweb.com>

# copy wrapper script
COPY ./wrapper.sh /

VOLUME ["/home/git/data"]

# start the entrypoint script
ENTRYPOINT ["/wrapper.sh"]
