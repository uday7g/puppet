class httpd {
file { “/etc/httpd/conf/httpd.conf”:
ensure => present,
require => Package[‘httpd’],
notify => Service[‘httpd’],
}
service { “httpd”:
ensure => running,
enable => true,
}
package { “httpd”:
ensure => present
}
file { “/etc/httpd/conf.d/vhost.conf”:
ensure => present,
source => “puppet:///httpd/vhost.conf”,
owner => root,
group => root,
}
}
