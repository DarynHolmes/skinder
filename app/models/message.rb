class Message < ActiveRecord::Base
  belongs_to :event
  validates :event, presence: true
  validates :body, :presence => true
 

end
