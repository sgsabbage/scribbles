class Story < ActiveRecord::Base
  belongs_to :universe, inverse_of: :stories
  attr_accessible :description, :name

  validates :name, presence: true
end
