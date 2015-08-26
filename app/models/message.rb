class Message < ActiveRecord::Base

  belongs_to :user  
  attr_accessible :content, :lat, :long, :user_id
  validates :user_id,  :presence => true
  validates :content, :presence => true
  validates :lat, :presence => true
  validates :long, :presence => true

end
