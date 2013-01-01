class Universe < ActiveRecord::Base
  attr_accessible :name

  validates :name, :presence => true

  has_many :stories, inverse_of: :universes

  has_and_belongs_to_many :characters, inverse_of: :universes
end
