class SendtextsController < ApplicationController
  def index
  end
 
  # Creates a message string to pass to the body of the text message, taken from an array of possible messages
  def pick_message 
    message = ["a", "b", "c"].sample
  end

  # Send a text message to a number entered via a form's POST method. Message in :body is sent from the phone number noted at :from.

  # sid and token and twilio stuff to be stored in separate file

  # From https://www.twilio.com/blog/2012/02/adding-twilio-sms-messaging-to-your-rails-app.html
  def send_text_message
    number_to_send_to = params[:number_to_send_to]
 
    twilio_sid = 'ACef0d534bb53901be6964325064522086'
    twilio_token = '358346907479ae440807d8af52658c31'
    twilio_phone_number = "4124074446"
 
    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token
 
    @twilio_client.account.sms.messages.create(
      :from => "+1#{twilio_phone_number}",
      :to => number_to_send_to["number_to_send_to"].to_i,
      :body => pick_message
    )

    redirect_to root_path
  end

end