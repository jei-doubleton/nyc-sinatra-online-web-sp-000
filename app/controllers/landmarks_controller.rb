class LandmarksController < ApplicationController

  get 'landmarks/new' do
      @titles = Title.all
      @figurs = Landmark.all
      erb :"landmarks/new"
  end

end
