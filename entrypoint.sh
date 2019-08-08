#!/bin/bash

set -ex

setup-docker &

# call original entrypoint from jenkins/ssh-slave
exec setup-sshd "$@"
