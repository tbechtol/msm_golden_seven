class ActorsController < ApplicationController

  def index
    @actors = Actor.all

  end

  def show
    @actor = Actor.find_by ({:id=> params[:id] })
  end

  def create_row
    @actor = Actor.new
    @actor.dob = params[:dob]
    @actor.image_url = params[:image_url]
    @actor.name = params[:name]
    @actor.bio = params[:bio]
    @actor.save

    render("show")
  end

  def edit_form
    @actor = Actor.find(params[:id])
  end

  def update_row
    @actor = Actor.find(params[:id])
    @actor.dob = params[:dob]
    @actor.image_url = params[:image_url]
    @actor.name = params[:name]
    @actor.bio = params[:bio]
    @actor.save

    render("show")

  end

  def destroy
    @actor = Actor.find(params[:id])
    @actor.destroy
  end




end
