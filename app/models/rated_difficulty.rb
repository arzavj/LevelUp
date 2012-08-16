class RatedDifficulty < ActiveRecord::Base
  attr_accessible :difficulty
  belongs_to :shared_url

  validates :difficulty, :presence => true
end
