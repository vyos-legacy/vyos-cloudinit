# vyos-cloudinit

vyos-cloudinit enables a user to customize VyOS machines by providing either a VyOS config document or an executable script through user-data.

## Configuration with vyos-config

vyos-cloudinit doesn't support cloud-init spec, but supports VyOS config spec.

The following is an example VyOS config document:

```
#vyos-config
system {
    host-name hoge
}
```

## Executing a Script

vyos-cloudinit supports executing user-data as a script instead of parsing it as a VyOS config document.

The following is an example script:

```
#!/bin/vbash
source /opt/vyatta/etc/functions/script-template

set system hostname hoge
commit
save
```
