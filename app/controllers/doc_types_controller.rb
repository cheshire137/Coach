class DocTypesController < ApplicationController
  # GET /doc_types
  # GET /doc_types.xml
  def index
    @doc_types = DocType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @doc_types }
    end
  end

  # GET /doc_types/1
  # GET /doc_types/1.xml
  def show
    @doc_type = DocType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @doc_type }
    end
  end

  # GET /doc_types/new
  # GET /doc_types/new.xml
  def new
    @doc_type = DocType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @doc_type }
    end
  end

  # GET /doc_types/1/edit
  def edit
    @doc_type = DocType.find(params[:id])
  end

  # POST /doc_types
  # POST /doc_types.xml
  def create
    @doc_type = DocType.new(params[:doc_type])

    respond_to do |format|
      if @doc_type.save
        flash[:notice] = 'DocType was successfully created.'
        format.html { redirect_to(@doc_type) }
        format.xml  { render :xml => @doc_type, :status => :created, :location => @doc_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @doc_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /doc_types/1
  # PUT /doc_types/1.xml
  def update
    @doc_type = DocType.find(params[:id])

    respond_to do |format|
      if @doc_type.update_attributes(params[:doc_type])
        flash[:notice] = 'DocType was successfully updated.'
        format.html { redirect_to(@doc_type) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @doc_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /doc_types/1
  # DELETE /doc_types/1.xml
  def destroy
    @doc_type = DocType.find(params[:id])
    @doc_type.destroy

    respond_to do |format|
      format.html { redirect_to(doc_types_url) }
      format.xml  { head :ok }
    end
  end
end
