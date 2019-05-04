class Figure < ActiveRecord::Base
  has_many :landkmarks
  has_many :figure_titles
  has_many :titles, through: :figure_titles
end
