#
# spec file for zimbra.rpm
#
Summary: Zimbra Mail
Name: zimbra-logger
Version: @@VERSION@@
Release: @@RELEASE@@
License: ZPL and other
Group: Applications/Messaging
URL: http://www.zimbra.com
Vendor: Zimbra, Inc.
Packager: Evgeniy Korneechev <ekorneechev@altlinux.org>
BuildRoot: /opt/zimbra
AutoReqProv: no
requires: zimbra-core

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
