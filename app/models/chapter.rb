class Chapter < ActiveRecord::Base
  belongs_to :story, inverse_of: :chapters
end
