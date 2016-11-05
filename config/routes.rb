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




  # routes for all DIRECTOR resources:

  #CREATE
  get('/directors/new_form', { :controller => 'directors', :action => 'new_form' })
  get('/create_director', { :controller => 'directors', :action => 'create_row' })
  
  #READ
  get('/directors', { :controller => 'directors', :action => 'index' })
  get('/directors/:id', { :controller => 'directors', :action => 'show' })

  #UPDATE
  get('/directors/:id/edit_form', { :controller => 'directors', :action => 'edit_form' })
  get('/update_director/:id', { :controller => 'directors', :action => 'update_row' })

  #DELETE
  get('/delete_director/:id', { :controller => 'directors', :action => 'destroy' })

  # routes for all Actor resources:

  #CREATE
  get('/', { :controller => 'actors', :action => 'new_form' })

  #READ
  get('/actors', { :controller => 'actors', :action => 'index' })





end
