# Class: helloworld
# ===========================
<<<<<<< HEAD
#Adding changes from master branch to init.pp file 
=======
#
# Full description of class helloworld here.
<<<<<<< Updated upstream
#
#Adding changes from shorten_title branch to init.pp file
>>>>>>> shorten_title
=======
#class helloworld {
#
#
#}
>>>>>>> Stashed changes

class helloworld {
    notify { 'hello, world!': }
    notify { 'Talk to me..... !': }
    notify { 'Making changes to the branch': }
    notify { 'Adding a shortened title branch': }
  }
