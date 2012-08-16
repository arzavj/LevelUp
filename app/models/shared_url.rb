class SharedUrl < ActiveRecord::Base
  attr_accessible :title, :url
  acts_as_taggable_on :topic
  has_many :rated_difficulties

  validates :title, :presence => true, :length => {:minimum => 5}

  def average_difficulty
  	@rated_difficulties.each do |difficulty|
  		average_difficulty += difficulty.difficulty
  	end

  	average_difficulty/(rated_difficulties.length)
  end
end
