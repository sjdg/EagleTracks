class AwardEarnedsController < ApplicationController
  # GET /award_earneds
  # GET /award_earneds.json
  def index
    @award_earneds = AwardEarned.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @award_earneds }
    end
  end

  # GET /award_earneds/1
  # GET /award_earneds/1.json
  def show
    @award_earned = AwardEarned.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @award_earned }
    end
  end

  # GET /award_earneds/new
  # GET /award_earneds/new.json
  def new
    @award_earned = AwardEarned.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @award_earned }
    end
  end

  # GET /award_earneds/1/edit
  def edit
    @award_earned = AwardEarned.find(params[:id])
  end

  # POST /award_earneds
  # POST /award_earneds.json
  def create
    @award_earned = AwardEarned.new(params[:award_earned])

    respond_to do |format|
      if @award_earned.save
        format.html { redirect_to @award_earned, notice: 'Award earned was successfully created.' }
        format.json { render json: @award_earned, status: :created, location: @award_earned }
      else
        format.html { render action: "new" }
        format.json { render json: @award_earned.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /award_earneds/1
  # PUT /award_earneds/1.json
  def update
    @award_earned = AwardEarned.find(params[:id])

    respond_to do |format|
      if @award_earned.update_attributes(params[:award_earned])
        format.html { redirect_to @award_earned, notice: 'Award earned was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @award_earned.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /award_earneds/1
  # DELETE /award_earneds/1.json
  def destroy
    @award_earned = AwardEarned.find(params[:id])
    @award_earned.destroy

    respond_to do |format|
      format.html { redirect_to award_earneds_url }
      format.json { head :no_content }
    end
  end
end
