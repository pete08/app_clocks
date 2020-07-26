class Api::ClocksController < ApplicationController
  def index
    @clocks = Clock.all
    render "index.json.jb"
  end

  def show
    @clock = Clock.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @clock = Clock.find_by(id: params[:id])
    @clock.style = params[:style] || @clock.style
    @clock.price = params[:price] || @clock.price
    @clock.save
    render "show.json.jb"
  end

  def destroy
    @clock = Clock.find_by(id: params[:id])
    @clocks = Clock.all
    p @clock
    @clock.delete
    render "index.json.jb"
  end

end
