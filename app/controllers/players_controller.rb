class PlayersController < ApplicationController
  # GET /players
  # GET /players.xml
  
  def index
 @players =Player.find_all_by_user_id(current_user.id)
#@players = Player.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @players }
    end
  end

  # GET /players/1
  # GET /players/1.xml
  def show
    @player = Player.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @player }
    end
  end

  # GET /players/new
  # GET /players/new.xml
  def new
    @player = Player.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @player }
    end
  end

  # GET /players/1/edit
  def edit
    @player = Player.find(params[:id])
  end
  # POST /players
  # POST /players.xml
  def create

	@player = Player.new(params[:player])
	@player.save
	if params[:commit]=="addplayer" 
	redirect_to new_player_path
	else
	redirect_to programs_path
	end
    

    #~ respond_to do |format|
      #~ if @player.save
        #~ #format.html { render :text =>"success" }
        #~ format.html { redirect_to programs_path } #if params[:test].blank?
       #~ # format.html { redirect_to new_player_path } if params[:test]=="true"
      #~ redirect_to params[:commit]== "save" ? "/players/new" : "/programs/index"
      
       #~ if params[:commit]=="save"
	       #~ p 11111111111
	       #~ render "/players/new"
	#~ else
		#~ p 22222222222222
		#~ redirect_to "/programs/index"
		#~ end
        #~ #format.xml  { render :xml => @player, :status => :created, :location => @player }
      #~ else
        #~ #format.html { render :action => "new" }
        #~ #format.xml  { render :xml => @player.errors, :status => :unprocessable_entity }
      #~ end
    #~ end
  end
  # PUT /players/1
  # PUT /players/1.xml

  def update
    @player = Player.find(params[:id])

    respond_to do |format|
      if @player.update_attributes(params[:player])
        format.html { redirect_to(@player, :notice => 'Player was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @player.errors, :status => :unprocessable_entity }
      end
    end
  end
def addplayer
	  puts params
    @player = Player.new(params[:player])

    respond_to do |format|
      if @player.save
        #format.html { render :text =>"success" }
        format.html { redirect_to player_new_path }
        format.xml  { render :xml => @player, :status => :created, :location => @player }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @player.errors, :status => :unprocessable_entity }
      end
    end
	end
  # DELETE /players/1
  # DELETE /players/1.xml
  def destroy
    @player = Player.find(params[:id])
    @player.destroy

    respond_to do |format|
      format.html { redirect_to(players_url) }
      format.xml  { head :ok }
    end
  end
end
