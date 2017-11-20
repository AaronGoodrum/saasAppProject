# README

[Upskill](http://upskillcourses.com) Software-as-a-Service Ruby on Rails App
Building a website using ruby on rails



    This command will only work from inside the Rails application directory.

###Terminal

cd workspace
rails s -b $IP -p $PORT

bundle exec rails server -b $IP -p $PORT
(The shorthand version of the command is...)
bundle exec rails s -b $IP -p $PORT


##link_to Used ruby prefixes <%= link_to , %>
<%= link_to "About", about_path %>

##routes
use prefixes instead of hard-coding links
    ###Terminal
    rails routes
routes call the controller page >  #name

##PagesController
controller use the #name from routes to run (def #name) to look for the app views

##app>views>pages

