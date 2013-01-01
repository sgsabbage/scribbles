class Story < ActiveRecord::Base
  belongs_to :universe
  attr_accessible :description, :name

  validates :name, presence: true
end
