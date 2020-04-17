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
  end

  def delete
  end

end
