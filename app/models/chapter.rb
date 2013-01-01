class Chapter < ActiveRecord::Base
  attr_accessible :title, :body

  belongs_to :story, inverse_of: :chapters
end
