class Story < ActiveRecord::Base
  attr_accessible :description, :name

  validates :name, presence: true

  belongs_to :universe, inverse_of: :stories
  has_many :chapters, inverse_of: :story
end
