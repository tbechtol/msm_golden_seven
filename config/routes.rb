Rails.application.routes.draw do

  # route for the initial domain

get('/', { :controller => 'movies', :action => 'index' })

  # routes for all Director resources:

  #Create
  get('/', {controller: => 'directors', :action => 'new_form' })

  #Read

  #Update


  #Delete


  # routes for all Actor resources:



  # routes for all Movie resources:




end
