class CupcakesController < ApplicationController

  get "/cupcakes" do
    @cupcake = Cupcake.all
    erb :"cupcakes/index"
  end

  get "/cupcakess/new" do
    erb :"cupcakes/new"
  end

  get "/cupcakes/:id" do
     @cupcake = Cupcake.find(params[:id])
     erb :"cupcakes/show"
  end

  post "/cupcakes" do
      cupcake = Cupcake.create(params[:cupcake])
      redirect '/cupcakess/#{cupcake.id}'
  end
  get "/cupcakes/:id/edit" do
      @cupcake = cupcake.find(params[:id])
      erb :"cupcakes/edit"
  end


end
