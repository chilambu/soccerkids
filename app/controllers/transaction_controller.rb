class TransactionController < ApplicationController
	  before_filter :authenticate_user!
 def index
   @transaction=Transaction.all
 end

 def new
	@player = Player.find(params[:player_id])
	unless @player.transaction_id
   @transaction=Transaction.new
	else
	redirect_to '/home/alreadypaid'

	end
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
		:year       => '2019',
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
	       # Capture the money
	gateway.capture(15000, response.authorization)	
	flash[:notice] = "Thank you, Transaction is sucessfully completed"
	puts params[:player_id]
	#@transaction.player_id=params[:id]
	@transaction.player_id= (params[:transaction][:player_id])
	@transaction.save
	
	@player=Player.find_by_id(params[:transaction][:player_id])
	@transaction=Transaction.last.id
	puts @player.id
	puts @player.transaction.id
	@name=Player.find_by_id(@player.id)
	Email.pay(current_user.email,@name.first_name).deliver
	@player.update_attributes(:transaction_id => @transaction)
	redirect_to '/home/thanks'
     end
     else
	flash[:notice] = "invalid"
	redirect_to '/home/sorry'

  
  end
  
 end
 
end
