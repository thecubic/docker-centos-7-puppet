FROM centos:centos7
MAINTAINER Dave Carlson <thecubic@thecubic.net>

# import the PuppetLabs signing key
RUN ["/usr/bin/rpm", "--import", "https://yum.puppetlabs.com/RPM-GPG-KEY-puppetlabs"]

# install the PuppetLabs release RPM
RUN ["/usr/bin/rpm", "-ivh", "https://yum.puppetlabs.com/puppetlabs-release-el-7.noarch.rpm"]

# install puppet
RUN ["/usr/bin/yum", "-y", "install", "puppet"]
