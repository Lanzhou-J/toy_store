class ToysController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
  end

  def display
    render json: Toy.all
  end

  def show
    id = params[:id].to_i
    render json: Toy.find(id)
  end

  def new
    Toy.create(
    name: params[:toy][:name],
    description: params[:toy][:description],
    date: params[:toy][:date],
    user: params[:toy][:user]
    )
    render json: Toy.last
  end

  def update
    id = params[:id].to_i
    toy = Toy.find(id)
    toy.update(
    name: params[:toy][:name],
    description: params[:toy][:description],
    date: params[:toy][:date],
    user: params[:toy][:user]  
    )
  end

  def destroy
    id = params[:id].to_i
    toy = Toy.find(id)
    toy.destroy
    # render json: Toy.all
  end

end
