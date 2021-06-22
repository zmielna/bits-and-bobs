# based on
# https://forums.rockylinux.org/t/package-downgrade-on-centos-8-4-rocky-8-4-conversion/3062
dnf update

rpm -e --nodeps centos-gpg-keys centos-linux-release centos-linux-repos
rpm -ivh \
https://download.rockylinux.org/pub/rocky/8/BaseOS/x86_64/os/Packages/rocky-release-8.4-23.el8.noarch.rpm \
https://download.rockylinux.org/pub/rocky/8/BaseOS/x86_64/os/Packages/rocky-repos-8.4-23.el8.noarch.rpm \
https://download.rockylinux.org/pub/rocky/8/BaseOS/x86_64/os/Packages/rocky-gpg-keys-8.4-23.el8.noarch.rpm
dnf distro-sync -y
