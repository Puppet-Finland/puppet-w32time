# == Class: w32time
#
# This class configures w32time
#
# == Parameters
#
# [*manage*]
#   Whether to manage w32time using Puppet. Valid values are true (default) 
#   and false.
#
# == Authors
#
# Samuli Seppänen <samuli.seppanen@gmail.com>
#
# == License
#
# BSD-license. See file LICENSE for details.
#
class w32time
(
    Boolean                  $manage = true,

) inherits w32time::params
{

if $manage {

    dsc_xservice { 'Ensure W32Time service is running':
        dsc_ensure      => present,
        dsc_name        => 'W32Time',
        dsc_state       => 'running',
        dsc_startuptype => 'automatic',
    }
}
}
