class BookMailer < ApplicationMailer
  default :from => 'any_from_address@example.com'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_booking(user)
    @user = user
    mail( :to => "pongsakorns@gmail.com",
    :subject => 'New Booking' )
  end

end
