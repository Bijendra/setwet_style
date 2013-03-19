class UserMailer < ActionMailer::Base
  default from: "setwet@SetWet.com"

  def contact_form(user,image_path)
    @user = user
    
    # Add headers to the mail
    # attachments['filename.jpg'] = File.read(image_path)
    mail(:to => "bijendra.biju@gmail.com", :subject => "SetWet user registration info")
  end
end
