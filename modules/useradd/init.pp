class useradd {
user { “testabc”:
ensure => present,
uid => 1002,
shell => “/bin/bash”,
home => “/home/testabc”,
group => ‘puppet’
managehome => true
}
}
