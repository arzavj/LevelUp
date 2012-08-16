class SharedUrlsController < ApplicationController
  # GET /shared_urls
  # GET /shared_urls.json
  def index
    @shared_urls = SharedUrl.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shared_urls }
    end
  end

  # GET /shared_urls/1
  # GET /shared_urls/1.json
  def show
    @shared_url = SharedUrl.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @shared_url }
    end
  end

  # GET /shared_urls/new
  # GET /shared_urls/new.json
  def new
    @shared_url = SharedUrl.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @shared_url }
    end
  end

  # GET /shared_urls/1/edit
  def edit
    @shared_url = SharedUrl.find(params[:id])
  end

  # POST /shared_urls
  # POST /shared_urls.json
  def create
    @shared_url = SharedUrl.new(params[:shared_url])
    @shared_url.topic_list = params[:tags]
    @shared_url.rated_difficulties.build(:difficulty => params[:level])
    respond_to do |format|
      if @shared_url.save
        format.html { redirect_to @shared_url, notice: 'Shared url was successfully created.' }
        format.json { render json: @shared_url, status: :created, location: @shared_url }
      else
        format.html { render action: "new" }
        format.json { render json: @shared_url.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /shared_urls/1
  # PUT /shared_urls/1.json
  def update
    @shared_url = SharedUrl.find(params[:id])
    @shared_url.topic_list = params[:tags]
    @shared_url.save #Don't know if I need this, but oh well
    
    respond_to do |format|
      if @shared_url.update_attributes(params[:shared_url])
        format.html { redirect_to @shared_url, notice: 'Shared url was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @shared_url.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shared_urls/1
  # DELETE /shared_urls/1.json
  def destroy
    @shared_url = SharedUrl.find(params[:id])
    @shared_url.destroy

    respond_to do |format|
      format.html { redirect_to shared_urls_url }
      format.json { head :no_content }
    end
  end
end
