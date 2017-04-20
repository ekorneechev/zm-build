#
# spec file for zimbra.rpm
#
Summary: Zimbra MTA
Name: zimbra-mta
Version: @@VERSION@@
Release: @@RELEASE@@
License: Various
Group: Applications/Messaging
URL: http://www.zimbra.com
Vendor: Zimbra, Inc.
Packager: Zimbra, Inc.
BuildRoot: /opt/zimbra
AutoReqProv: no
provides: @@MTA_PROVIDES@@
requires: zimbra-core, zimbra-mta-components

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
