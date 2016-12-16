#!/bin/vbash
source /opt/vyatta/etc/functions/script-template

set system hostname hoge
commit
save
