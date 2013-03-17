class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def contact_form(user,image_path)
    @user = user
    
    # Add headers to the mail
    attachments['filename.jpg'] = File.read(@user.attachment)
    mail(:to => "fixed_email", :subject => "SetWet user registration info")
  end
end
