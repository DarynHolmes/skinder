# require_dependency 'app/validators/email_validator.rb'
# https://developer.salesforce.com/forums/?id=906F00000008tJpIAI require 'EmailValidator' 

class EmailValidator < ActiveModel::EachValidator

  def validate_each(record, attribute, value)
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      record.errors[attribute] << (options[:message] || "is not an email")
    end
  end

end

class User < ActiveRecord::Base
  before_save :downcase_email

  validates :name,  presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 200 }
  validates :email, email: true
  validates :email, uniqueness: { case_sensitive: false }

  has_secure_password

  private 

  def downcase_email
      self.email = email.downcase
  end
end
