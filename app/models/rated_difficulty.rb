class RatedDifficulty < ActiveRecord::Base
  attr_accessible :difficulty
  belongs_to :shared_url
end
