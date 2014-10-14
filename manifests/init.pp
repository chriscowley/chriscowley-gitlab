# == Class: gitlab
#
# Full description of class gitlab here.
#
# === Parameters
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#
class gitlab (
  $package_name = $gitlab::params::package_name,
  $service_name = $gitlab::params::service_name,
) inherits gitlab::params {

  # validate parameters here

  class { 'gitlab::install': } ->
  class { 'gitlab::config': } ~>
  class { 'gitlab::service': } ->
  Class['gitlab']
}
