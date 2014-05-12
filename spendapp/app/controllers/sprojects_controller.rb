class SprojectsController < ApplicationController
  before_filter :authenticate_user!

  # GET /sprojects
  # GET /sprojects.json
  def index
    @sprojects = current_user.sprojects.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sprojects }
    end
  end

  # GET /sprojects/1
  # GET /sprojects/1.json
  def show
    @sproject = current_user.sprojects.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sproject }
    end
  end

  # GET /sprojects/new
  # GET /sprojects/new.json
  def new
    @sproject = current_user.sprojects.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sproject }
    end
  end

  # GET /sprojects/1/edit
  def edit
    @sproject = current_user.sprojects.find(params[:id])
  end

  # POST /sprojects
  # POST /sprojects.json
  def create
    @sproject = current_user.sprojects.new(params[:sproject])

    respond_to do |format|
      if @sproject.save
        format.html { redirect_to @sproject, notice: 'Sproject was successfully created.' }
        format.json { render json: @sproject, status: :created, location: @sproject }
      else
        format.html { render action: "new" }
        format.json { render json: @sproject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sprojects/1
  # PUT /sprojects/1.json
  def update
    @sproject = current_user.sprojects.find(params[:id])

    respond_to do |format|
      if @sproject.update_attributes(params[:sproject])
        format.html { redirect_to @sproject, notice: 'Sproject was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sproject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sprojects/1
  # DELETE /sprojects/1.json
  def destroy
    @sproject = current_user.sprojects.find(params[:id])
    @sproject.destroy

    respond_to do |format|
      format.html { redirect_to sprojects_url }
      format.json { head :no_content }
    end
  end
end
