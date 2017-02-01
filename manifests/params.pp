#
# == Class: w32time::params
#
# Defines some variables based on the operating system
#
class w32time::params {

    case $::osfamily {
        'windows': {
            # Nothing here, but we don't want this module to fail on Windows
        }
        default: {
            fail("Unsupported OS: ${::osfamily}")
        }
    }
}
