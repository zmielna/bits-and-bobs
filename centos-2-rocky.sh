# based on
# https://forums.rockylinux.org/t/transition-from-centos-to-rocky/389/3
# to be fixed with rocky equivalent
dnf update -y
rpm -e --nodeps centos-backgrounds centos-indexhtml centos-gpg-keys centos-linux-release centos-linux-repos centos-logos
rpm -ivh \
        http://springdale.princeton.edu/data/springdale/8/x86_64/os/BaseOS/Packages/springdale-appstream-8-0.sdl8.2.noarch.rpm \
        http://springdale.princeton.edu/data/springdale/8/x86_64/os/BaseOS/Packages/springdale-core-8-0.sdl8.2.noarch.rpm \
        http://springdale.princeton.edu/data/springdale/8/x86_64/os/BaseOS/Packages/springdale-release-8.3-0.42.el8.x86_64.rpm
dnf distro-sync -y
