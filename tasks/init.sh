#!/bin/bash

/opt/puppetlabs/bin/puppet config --section main delete server
/opt/puppetlabs/bin/puppet config --section agent set server_list "$PT_server_list"
