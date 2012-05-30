class ProgramListController < ApplicationController

	def index
    	@program_list = Programlist.find_all_by_program_id(params[:pg])
  	end
  
  # GET /Programlists/1
  # GET /Programlists/1.xml
  def show
    @program_list= Programlist.find params[:id]

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @program_list}
    end
  end

  # GET /Programlists/new
  # GET /Programlists/new.xml
  def new
    @program_list= Programlist.new
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @program_list}
    end
  end

  # GET /Programlists/1/edit
  def edit
    @program_list= Programlist.find(params[:id])
  end

  # POST /Programlists
  # POST /Programlists.xml
  def create
  	
    @program_list= Programlist.create(params[:programlist])

    respond_to do |format|
      if @program_list.save
        format.html { redirect_to(program_list_path(@program_list.id), :notice => 'Programlist was successfully created.') }
        format.xml  { render :xml => @program_list, :status => :created, :location => @program_list}
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @program_list.errors, :status => :unprocessable_entity }
      end
    end
  end
  # PUT /Programlists/1
  # PUT /Programlists/1.xml
  def update
    @program_list= Programlist.find(params[:id])

    respond_to do |format|
      if @program_list.update_attributes(params[:programlist])
        format.html { redirect_to(@program_list, :notice => 'Programlist was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @program_list.errors, :status => :unprocessable_entity }
      end
    end
  end
def programdetails
	end
  # DELETE /Programlists/1
  # DELETE /Programlists/1.xml
  def destroy
    @program_list= Programlist.find(params[:id])
    @program_list.destroy

    respond_to do |format|
      format.html { redirect_to(programlists_url) }
      format.xml  { head :ok }
    end
  end
end
