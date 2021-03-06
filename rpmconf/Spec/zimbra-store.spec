#
# spec file for zimbra.rpm
#
Summary: Zimbra Mail
Name: zimbra-store
Version: @@VERSION@@
Release: @@RELEASE@@
License: ZPL and other
Group: Applications/Messaging
URL: http://www.zimbra.com
Vendor: Zimbra, Inc.
Packager: Evgeniy Korneechev <ekorneechev@altlinux.org>
BuildRoot: /opt/zimbra
AutoReqProv: no
requires: zimbra-core, zimbra-store-components, zimbra-jetty-distribution >= 9.4.18.v20190429-2.@@PKG_OS_TAG@@@@MORE_DEPENDS@@

%description
Best email money can buy

%define __spec_install_pre /bin/true

%prep

%build

%install

%pre

%post

%preun

%postun

%files
