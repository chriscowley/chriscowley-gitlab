# == Class gitlab::service
#
# This class is meant to be called from gitlab
# It ensure the service is running
#
class gitlab::service {

  service { $gitlab::service_name:
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
