class EventsController < ApplicationController
  # GET /events
  # GET /events.xml
  def index
    pl_ids=[]
    if params[:pl]
      pl_ids << params[:pl]
      @events= Event.find_all_by_programlist_id( params[:pl].to_s) 
    else
      @programlists = Programlist.find_all_by_program_id(params[:pg])
      @events_data=[]
      @programlists.each do |pl|
        pl_ids << pl.id
	   @result= Event.find_all_by_programlist_id( pl.id.to_s) 
	   @events_data<<@result
   end
   @events=@events_data.flatten! if(@events_data)
    end
    
 
puts 333333333333333333333333
puts params[:pl].inspect
puts pl_ids.inspect
puts @events.inspect
puts 333333333333333333333333
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @events }
    end
  end

  # GET /events/1
  # GET /events/1.xml
  def show
	@players = Player.find_all_by_user_id(current_user.id)
    @event = Event.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @event }
    end
  end


def full
	#@players = Player.find_all_by_user_id(current_user.id)
	#@event = Event.find_all_by_event_id(event.id)
	@player = Player.find(params[:player_id])
	@event = Event.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @event }
    end
	end
  # GET /events/new
  # GET /events/new.xml
  def new

    @event = Event.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @event }
    end
  end

  # GET /events/1/edit
  def edit
    @event = Event.find(params[:id])
  end

  # POST /events
  # POST /events.xml
  def create
    @event = Event.new(params[:event])

    respond_to do |format|
      if @event.save
        format.html { redirect_to(@event, :notice => 'Event was successfully created.') }
        format.xml  { render :xml => @event, :status => :created, :location => @event }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @event.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /events/1
  # PUT /events/1.xml
  def update
    @event = Event.find(params[:id])

    respond_to do |format|
      if @event.update_attributes(params[:event])
        format.html { redirect_to(@event, :notice => 'Event was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @event.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.xml
  def destroy
    @event = Event.find(params[:id])
    @event.destroy

    respond_to do |format|
      format.html { redirect_to(events_url) }
      format.xml  { head :ok }
    end
  end
end
