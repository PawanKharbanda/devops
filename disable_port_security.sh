#!/bin/bash

echo "============================================ START =================================================="
a=`neutron port-list | grep -w $1 |cut -d"|" -f2`
echo "============================================ OLD neutron port-show $a =================================================="
neutron port-show $a

neutron port-update --no-security-groups  $a
neutron port-update --port-security-enabled=false  $a

echo "============================================ NEW neutron port-show $a =================================================="
neutron port-show $a

echo "============================================ END =================================================="
