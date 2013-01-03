class Story < ActiveRecord::Base
  attr_accessible :description, :name

  validates :name, presence: true
  validates :description, presence: true
  validates :universe, presence: true

  belongs_to :universe, inverse_of: :stories
  has_many :chapters, inverse_of: :story
end
