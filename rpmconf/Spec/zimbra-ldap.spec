#
# spec file for zimbra.rpm
#
Summary: Zimbra LDAP
Name: zimbra-ldap
Version: @@VERSION@@
Release: @@RELEASE@@
License: OpenLDAP
Group: Applications/Messaging
URL: http://www.zimbra.com
Vendor: Zimbra, Inc.
Packager: Evgeniy Korneechev <ekorneechev@altlinux.org>
BuildRoot: /opt/zimbra
AutoReqProv: no
Requires: zimbra-core, zimbra-ldap-components

%description
Best email money can buy

%define __spec_install_pre /bin/true

%define __spec_install_post %compress_docs
%define __spec_install_post /usr/lib/rpm/brp-compress /usr/lib/rpm/brp-strip-comment-note %{nil}

%prep

%build

%install

%pre

%post

%preun

%postun

%files
