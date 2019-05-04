class FiguresController < ApplicationController

  get '/figures/new' do
    @titles = Title.all
    @landmarks = Landmark.all
    erb :"figures/new"
  end

  post '/figures' do
    @figure = Figure.create(params[figure])
    if !params[:title][:name].empty?
      @figure.title = Title.create(params[:title])
      @figure.save
    end
  end

end
