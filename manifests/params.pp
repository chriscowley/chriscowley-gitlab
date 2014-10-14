# == Class gitlab::params
#
# This class is meant to be called from gitlab
# It sets variables according to platform
#
class gitlab::params {
  case $::osfamily {
    'Debian': {
      $package_name = 'gitlab'
      $service_name = 'gitlab'
    }
    'RedHat', 'Amazon': {
      $package_name = 'gitlab'
      $service_name = 'gitlab'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
