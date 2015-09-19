class Event < ActiveRecord::Base
  has_many :messages
  validates :name, :code, :presence => true
end
