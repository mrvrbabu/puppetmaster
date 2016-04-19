# Class: helloworld
# ===========================
#
# Full description of class helloworld here.
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `sample parameter`
#
# Variables
# ----------
#
# Here you should define a list of variables that this module would require.
#
# * `sample variable`
#
# Examples
# --------
#
# @example
#    class { 'helloworld':
#      servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#    }
#
# Authors
# -------
#
# Author Name <author@domain.com>
#
# Copyright
# ---------
#
# Copyright 2016 Your name here, unless otherwise noted.
#
#class helloworld {
#
#
#}

class helloworld {
    notify { 'hello, world!': }
    notify { 'Talk to me..... !': }
    notify { 'Making changes to the branch': }
    notify { 'Adding a shortened title branch': }
  }
