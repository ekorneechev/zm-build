@ENTRIES = (
   { name => "ant-1.7.0-ziputil-patched",           tag    => "8.8.15", },
   { name => "ant-tar-patched",                     tag    => "8.8.15", },
   { name => "ical4j-0.9.16-patched",               tag    => "8.8.15", },
   { name => "junixsocket",                         tag    => "junixsocket-parent-2.0.4", remote => "gh-ks",},
   { name => "nekohtml-1.9.13",                     tag    => "8.8.15", },
   { name => "zm-admin-console",                    tag    => "8.8.15.p2", },
   { name => "zm-admin-help-common",                tag    => "8.8.15", },
   { name => "zm-ajax",                             tag    => "8.8.15.p2", },
   { name => "zm-admin-ajax",                       tag    => "8.8.15", },
   { name => "zm-amavis",                           tag    => "8.8.15", },
   { name => "zm-aspell",                           tag    => "8.8.15", },
   { name => "zm-bulkprovision-admin-zimlet",       tag    => "8.8.15", },
   { name => "zm-bulkprovision-store",              tag    => "8.8.15", },
   { name => "zm-certificate-manager-admin-zimlet", tag    => "8.8.15", },
   { name => "zm-certificate-manager-store",        tag    => "8.8.15", },
   { name => "zm-charset",                          tag    => "8.8.15", },
   { name => "zm-clam-scanner-store",               tag    => "8.8.15", },
   { name => "zm-clientuploader-admin-zimlet",      tag    => "8.8.15", },
   { name => "zm-clientuploader-store",             tag    => "8.8.15", },
   { name => "zm-core-utils",                       remote => "gh-ek",  },
   { name => "zm-db-conf",                          tag    => "8.8.15", },
   { name => "zm-dnscache",                         tag    => "8.8.15", },
   { name => "zm-downloads",                        tag    => "8.8.15", },
   { name => "zm-freshclam",                        tag    => "8.8.15", },
   { name => "zm-help",                             tag    => "8.8.15", },
   { name => "zm-helptooltip-zimlet",               tag    => "8.8.15", },
   { name => "zm-jetty-conf",                       tag    => "8.8.15", },
   { name => "zm-jython",                           tag    => "8.8.15", },
   { name => "zm-launcher",                         remote => "gh-ek",  },
   { name => "zm-ldap-utilities",                   tag    => "8.8.15", },
   { name => "zm-ldap-utils-store",                 tag    => "8.8.15.p2", },
   { name => "zm-licenses",                         tag    => "8.8.15", },
   { name => "zm-mailbox",                          tag    => "8.8.15.alt3", remote => "gh-ek", },
   { name => "zm-migration-tools",                  tag    => "8.8.15", },
   { name => "zm-mta",                              tag    => "8.8.15", },
   { name => "zm-nginx-conf",                       tag    => "8.8.15", },
   { name => "zm-nginx-lookup-store",               tag    => "8.8.15", },
   { name => "zm-openid-consumer-store",            tag    => "8.8.15", },
   { name => "zm-pkg-tool",                         remote => "gh-ek",  },
   { name => "zm-postfix",                          tag    => "8.8.15", },
   { name => "zm-proxy-config-admin-zimlet",        tag    => "8.8.15", },
   { name => "zm-ssdb-ephemeral-store",             tag    => "8.8.15", },
   { name => "zm-taglib",                           tag    => "8.8.15", },
      # zm-timezones repo can be removed and made independent of zm-zextras
      # zm-timezones cannot be done unless the packages from it are pushed to public repo
      # zm-timezones is already excluded in CircleCI builds via --exclude-git-repo=...
   { name => "zm-timezones",                        tag    => "8.8.15.p1", },
   { name => "zm-versioncheck-admin-zimlet",        tag    => "8.8.15", },
   { name => "zm-versioncheck-store",               tag    => "8.8.15", },
   { name => "zm-versioncheck-utilities",           tag    => "8.8.15", },
   { name => "zm-viewmail-admin-zimlet",            tag    => "8.8.15", },
   { name => "zm-web-client",                       tag    => "8.8.15.p2", },
   { name => "zm-webclient-portal-example",         tag    => "8.8.15", },
   { name => "zm-zcs",                              tag    => "8.8.15", },
   { name => "zm-zcs-lib",                          tag    => "8.8.15", },
   { name => "zm-zimlets",                          tag    => "8.8.15", },
   { name => "packages",                            remote => "gh-ek",  },
   { name => "zimbra-package-stub",                 remote => "gh-ek",  },
   { name => "zm-oauth-social",                     tag    => "8.8.15", },
   { name => "zm-gql",                              tag    => "8.8.15", },
);
