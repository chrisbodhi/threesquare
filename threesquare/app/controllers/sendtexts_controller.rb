class SendtextsController < ApplicationController
  def index
  end
 
  # Send a text message to a number entered via a form's POST method. Message in :body is sent from the phone number noted at :from.

  # sid and token and twilio stuff to be stored in separate file
  def send_text_message
    number_to_send_to = params[:number_to_send_to]
 
    twilio_sid = "AC711285c8dae436df2634d388afe47841"
    # twilio_sid = 'ACef0d534bb53901be6964325064522086'
    twilio_token = "8306f1991e164f1d69872eba04c305f2"
    twilio_phone_number = "4124074446"
 
    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token
 
    @twilio_client.account.sms.messages.create(
      :from => "+1#{twilio_phone_number}",
      :to => number_to_send_to,
      :body => "This is an message. It gets sent to #{number_to_send_to}"
    )
  end
end