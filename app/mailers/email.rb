class Email < ActionMailer::Base
  #default :from => "from@example.com"
  def send_email
	mail(:from=>"chilambarasan.p@gmail.com",:to=>"sriman@railsfactory.org",
            :subject=>'Reset your Password')  
    end
   def notif(contact)
	mail(:from=>"chilambarasan.p@gmail.com",:to=>contact,
            :subject=>'notification', :body=>'you will get notification from soccerkids')  
  end
end
