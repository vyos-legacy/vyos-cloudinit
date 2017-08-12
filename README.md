# vyos-cloudinit

vyos-cloudinit enables a user to customize VyOS machines by providing either a VyOS config document or an executable script through user-data.

## Configuration

```
set service cloudinit environment ec2
```

or

```
set service cloudinit ssh-user <user name>
set service cloudinit ssh-key <ssh key url>
set service cloudinit user-data <user data url>
```

## User data

### Configuration with vyos-config

vyos-cloudinit doesn't support cloud-init spec, but supports VyOS config spec.

The following is an example VyOS config document:

```
#vyos-config
system {
    host-name hoge
}
```

It will be merged into existing config.

### Executing a Script

vyos-cloudinit supports executing user-data as a script instead of parsing it as a VyOS config document.

The following is an example script:

```
#!/bin/vbash
source /opt/vyatta/etc/functions/script-template

set system hostname hoge
commit
save
```

## AMI

AMI name is "VyOS 1.1.7" and it is owned by AWS account ID 971835646178.

### Notes

* vyos-cloudinit is installed by default
* AWS CLI is installed by default

### AMIs

| Region         | AMI ID       |
| -------------- | ------------ |
| ap-northeast-1 | ami-918470f7 |
| ap-south-1     | ami-74552f1b |
| eu-west-2      | ami-a79485c3 |
| eu-west-1      | ami-2909f950 |
| ap-northeast-2 | ami-d675acb8 |
| sa-east-1      | ami-8d2e5fe1 |
| ca-central-1   | ami-4cc47a28 |
| ap-southeast-1 | ami-981f84fb |
| ap-southeast-2 | ami-99627afa |
| eu-central-1   | ami-63a70e0c |
| us-east-1      | ami-80b683fb |
| us-east-2      | ami-5dba9a38 |
| us-west-1      | ami-e583a885 |
| us-west-2      | ami-8dd734f5 |
