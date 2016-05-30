#!/bin/bash

sudo chef update
sudo chef export zero-repo --force
sudo /opt/chefdk/embedded/bin/chef-client -z
