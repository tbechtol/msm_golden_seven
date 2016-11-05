Rails.application.routes.draw do

  # route for the initial domain

  get('/', { :controller => 'movies', :action => 'index' })


  # routes for all MOVIE resources:

  #CREATE
  get('/movies/new_form', { :controller => 'movies', :action =>'new_form' })
  get('/create_movie', { :controller => 'movies', :action => 'create_row'})

  #READ
  get('/movies', { :controller => 'movies', :action => 'index' })
  get('/movies/:id', { :controller => 'movies', :action => 'show' })

  #UPDATE
  get('/movies/:id/edit_form', { :controller => 'movies', :action => 'edit_form' })
  get('/update_movie/:id', { :controller => 'movies', :action => 'update_row' })
  
  #DELETE
  get('/delete_movie/:id', { :controller => 'movies', :action => 'destroy' })

  # routes for all Director resources:

  #Create
  get('/', { :controller => 'directors', :action => 'new_form' })

  #Read
  get('/directors', { :controller => 'directors', :action => 'index' })
  get('/directors/:id', { :controller => 'directors', :action => 'show' })

  #Update


  #Delete


  # routes for all Actor resources:



  # routes for all Movie resources:




end
