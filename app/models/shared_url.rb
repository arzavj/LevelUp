class SharedUrl < ActiveRecord::Base
  attr_accessible :title, :url
  acts_as_taggable_on :difficulty, :topic
end
