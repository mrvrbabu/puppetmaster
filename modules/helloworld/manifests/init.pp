# Class: helloworld
# ===========================
#Adding changes from master branch to init.pp file 

class helloworld {
    notify { 'hello, world!': }
    notify { 'Talk to me..... !': }
    notify { 'Making changes to the branch': }
    notify { 'Adding a shortened title branch': }
  }
