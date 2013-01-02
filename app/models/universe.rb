class Universe < ActiveRecord::Base
  attr_accessible :name, :description

  validates :name, :presence => true

  has_many :stories, inverse_of: :universe

  has_and_belongs_to_many :characters
end
