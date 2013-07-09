class Story < ActiveRecord::Base
  validates :name, presence: true
  validates :description, presence: true
  validates :universe, presence: true

  belongs_to :universe, inverse_of: :stories
  has_many :chapters, inverse_of: :story
end
