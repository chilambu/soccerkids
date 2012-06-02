class TransactionController < ApplicationController
	
 def index
   @transaction=Transaction.all
 end

 def new
   @transaction=Transaction.new
	@player = Player.find(params[:player_id])
	
 end
  
 def create
	$value
	@transaction = Transaction.new(params[:transaction])
	# Send requests to the gateway's test servers

	ActiveMerchant::Billing::Base.mode = :test
	
	# Create a new credit card object
	#~ credit_card = ActiveMerchant::Billing::CreditCard.new(
	#~ :number     => '4785636150538332',
	#~ :month      => '8',
	#~ :year       => '2019',
	#~ :first_name => 'Tobias',
	#~ :last_name  => 'Luetke',
	#~ :verification_value  => '123'
	#~ )
	credit_card = ActiveMerchant::Billing::CreditCard.new(
		:number     => "#{params[:transaction][:card_number]}",
		:month      => '8',
		#:month      => "#{params[:transaction][:month]}",
		:year       => '2019',
		#:year       => "#{params[:transaction][:year]}",	
		:first_name => "#{params[:transaction][:name]}",	
		:last_name  => 'Luetke',
		:verification_value  =>"#{params[:transaction][:card_verification]}"   
	)
	if credit_card.valid?
	gateway=ActiveMerchant::Billing::PaypalGateway.new(
		:login => "john.n_1278592458_biz_api1.yahoo.co.in",
		:password => "1278592465",
		:signature => "AiPC9BjkCyDFQXbSkoZcgqH3hpacAFxPwudk.Im4wr8hZApTZwekIFFz"
	)

	# Authorize for $150 dollars (1000 cents)
	response = gateway.authorize(15000, credit_card, :ip => "127.0.0.1")
	if response.success?
		puts "11111111111111111111111111111111"

	       # Capture the money
	gateway.capture(1000, response.authorization)	
	puts "Transaction is complete!"
	flash[:notice] = "Thank you, Transaction is sucessfully completed"
	puts "params[:player_id]"
	#@transaction.player_id=params[:id]
	@transaction.player_id= (params[:transaction][:player_id])
	@transaction.save
	@player=Player.find_by_id(params[:transaction][:player_id])
	@transaction=Transaction.last.id
	puts "22222222222222222222222222"
	puts @player.id
	puts @player.transaction.id
	puts "22222222222222222222222222"
	@player.update_attributes(:transaction_id => @transaction)
	redirect_to '/home/thanks'
     end
     else
     #puts "Error: #{response.message}"
	flash[:notice] = "invalid"
	redirect_to '/home/sorry'

  #~ else
    #~ puts "Error: credit card is not valid. #{credit_card.errors.full_messages.join('. ')}"
  end
  
 end
 
end
