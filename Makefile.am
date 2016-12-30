cfgdir = $(datadir)/vyatta-cfg/templates
initddir = /etc/init.d
sysconfdir = /opt/vyatta/etc/vyos-cloudinit

initd_SCRIPTS =
initd_SCRIPTS += etc/init.d/vyos-cloudinit
initd_SCRIPTS += etc/init.d/vyos-ssh-key

sbin_SCRIPTS =
sbin_SCRIPTS += scripts/vyos-cloudinit
sbin_SCRIPTS += scripts/vyos-ssh-key

sysconf_DATA =
sysconf_DATA += sysconf/vyos-cloudinit/vyos-cloudinit.conf
sysconf_DATA += sysconf/vyos-cloudinit/ec2.conf
sysconf_DATA += sysconf/vyos-cloudinit/openstack.conf

cpiop = find  . ! -regex '\(.*~\|.*\.bak\|.*\.swp\|.*\#.*\#\)' -print0 | \
  cpio -0pd

install-exec-hook:
	mkdir -p $(DESTDIR)$(cfgdir)
	cd templates-cfg; $(cpiop) $(DESTDIR)$(cfgdir)
