class UserMailer < ActionMailer::Base
    default from: "Maker's Label <info@makerslabel.com>"

    def signup_email(user)
        @user = user
        @twitter_message = "#Excited for @makerslabel to launch."
  	    @url = 'http://makerslabel.com'


        mail(:to => user.email, :subject => "Thanks for signing up!")
    end
end
