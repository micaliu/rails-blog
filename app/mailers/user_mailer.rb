class UserMailer < ApplicationMailer
	  def registration(user)
	    @user = user
	    mail(to: @user.email, subject: 'thank you for your registration')
	  end
end
