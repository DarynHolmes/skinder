class Message < ActiveRecord::Base
  before_save :downcase_email

  belongs_to :event
  validates :event, presence: true
  validates :body, :presence => true
 
  private
  def downcase_email
      self.email = email.downcase if email.present?
  end
end
