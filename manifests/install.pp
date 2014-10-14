# == Class gitlab::install
#
class gitlab::install {

  package { $gitlab::package_name:
    ensure => present,
  }
}
