#
# spec file for zimbra.rpm
#
Summary: Zimbra SNMP
Name: zimbra-snmp
Version: @@VERSION@@
Release: @@RELEASE@@
License: Various
Group: Applications/Messaging
URL: http://www.zimbra.com
Vendor: Zimbra, Inc.
Packager: Evgeniy Korneechev <ekorneechev@altlinux.org>
BuildRoot: /opt/zimbra
AutoReqProv: no
requires: zimbra-core, zimbra-snmp-components

%description
Best email money can buy

%define __spec_install_pre /bin/true

%define __spec_install_post %compress_docs

%prep

%build

%install

%pre

%post

%preun

%postun

%files
