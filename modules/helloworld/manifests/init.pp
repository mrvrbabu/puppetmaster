# Class: helloworld
# ===========================
#
# Full description of class helloworld here.
#
#Adding changes from shorten_title branch to init.pp file

class helloworld {
    notify { 'hello, world!': }
    notify { 'Talk to me..... !': }
    notify { 'Making changes to the branch': }
    notify { 'Adding a shortened title branch': }
  }
