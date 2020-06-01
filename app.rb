require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"
require 'byebug'

get "/" do
  @restaurants = Restaurant.all
  erb :index
end

get "/restaurants/:id" do
  restaurant_id = params[:id]
  @restaurant = Restaurant.find(restaurant_id)
  erb :show
end

get "/about" do
  erb :about
end

post "/restaurants" do
  name = params[:name]
  city = params[:city]
  restaurant = Restaurant.new(name: name, city: city)
  restaurant.save
  redirect '/'
end
