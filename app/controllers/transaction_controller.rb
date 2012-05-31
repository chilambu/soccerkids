class TransactionController < ApplicationController
	
 def index
   @transaction=Transaction.all
 end

 def new
   @transaction=Transaction.new
 end
  
 def create
   $value
   #p params[:id]
   #$value= params[:id]
   @transaction = Transaction.new(params[:transaction])
   
   # Send requests to the gateway's test servers

   ActiveMerchant::Billing::Base.mode = :test
   
   # Create a new credit card object
credit_card = ActiveMerchant::Billing::CreditCard.new(
  :number     => '4785636150538332',
  :month      => '8',
  :year       => '2019',
  :first_name => 'Tobias',
  :last_name  => 'Luetke',
  :verification_value  => '123'
)

  #if credit_card.valid?
  #~ response = gateway.purchase(@amount.to_i,credit_card,:ip => "127.0.0.1", :billing_address => {
    #~ :name     => "Bharani",
    #~ :address1 => "No.11",
    #~ :city     => "chennai",
    #~ :state    => "Tamilnadu",
    #~ :country  => "India",
    #~ :zip      => "600059"
  #~ } )   
   if credit_card.valid?
   gateway=ActiveMerchant::Billing::PaypalGateway.new(
    :login => "john.n_1278592458_biz_api1.yahoo.co.in",
    :password => "1278592465",
    :signature => "AiPC9BjkCyDFQXbSkoZcgqH3hpacAFxPwudk.Im4wr8hZApTZwekIFFz"
  )
  
  # Authorize for $150 dollars (1000 cents)
  response = gateway.authorize(15000, credit_card, :ip => "127.0.0.1")
  
   #~ gateway = ActiveMerchant::Billing::PaypalGateway.new(
        #~ :login => "bharan_1337931714_biz_api1.gmail.com",
        #~ :password => "1337931754",
        #~ :signature => "ABtl2XslRuLEdZCnzDl1vba40WOvAcrxKrWV2yaKqzLx0zRitPeQN3pl "
   #~ )
   #~ credit_card = ActiveMerchant::Billing::CreditCard.new(
    #~ :type                   => "#{params[:transaction][:card_type]}",
    #~ :number                 => "#{params[:transaction][:card_number]}",
    #~ :verification_value     => "#{params[:transaction][:card_verification]}",
    #~ :month                   => "1",
    #~ :year                   => "2017",
    #~ :first_name             => "#{params[:transaction][:name]}",
    #~ :last_name              => "#{params[:transaction][:last_name]}"
 
  #~ )
  #~ @amount="#{params[:transaction][:amount]}"
  #~ if credit_card.valid?
  #~ response = gateway.purchase(@amount.to_i,credit_card,:ip => "127.0.0.1", :billing_address => {
    #~ :name     => "Bharani",
    #~ :address1 => "No.11",
    #~ :city     => "chennai",
    #~ :state    => "Tamilnadu",
    #~ :country  => "India",
    #~ :zip      => "600059"
  #~ } )   
   if response.success?
	       # Capture the money
    gateway.capture(1000, response.authorization)

    #@transaction.user_id=current_user.id
    #@transaction.monitorsignage_id=$value
    @transaction.save
    puts "Transaction is complete!"
    #~ @mycart=Mycart.find_by_monitorsignage_id($value)
    #~ p @mycart
    #~ @schedule=Schedule.new(params[:monitorsignage_id])
    #~ @schedule.from_date=@mycart.from_date
    #~ @schedule.to_date=@mycart.to_date
    #~ @schedule.from_time=@mycart.from_time
    #~ @schedule.to_time=@mycart.to_time
    #~ @schedule.day=@mycart.day
    #~ @schedule.monitorsignage_id=@mycart.monitorsignage_id
    #~ @schedule.save
    #~ @mycart.destroy
    flash[:notice] = "Thank you, Transaction is sucessfully completed"
    redirect_to '/home/thanks'
     @transaction.save
   else
    puts "Error: #{response.message}"
      flash[:notice] = "invalid"
            redirect_to '/home/thanks'
 end
  #~ else
    #~ puts "Error: credit card is not valid. #{credit_card.errors.full_messages.join('. ')}"
  end
end

end
