module ApplicationHelper

  def avatar_url(message)
    default_amage_url = CGI.escape("https://www.usabmx.com/images/bmx/site/default_profile_avatar_48.png?1440099072")
    
    identifier = ""
    identifier = message.username if message.username.present?
    identifier = message.email if message.email.present?
    
    gravatar_id = Digest::MD5.hexdigest(identifier.downcase)
    "http://gravatar.com/avatar/#{gravatar_id}.png?s=48&d=identicon"
  end

end
