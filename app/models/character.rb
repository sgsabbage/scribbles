class Character < ActiveRecord::Base
  attr_accessible :name

  has_and_belongs_to_many :universes
end
