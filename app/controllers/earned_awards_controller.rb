class EarnedAwardsController < ApplicationController
  # GET /earned_awards
  # GET /earned_awards.json
  def index
    @earned_awards = EarnedAward.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @earned_awards }
    end
  end

  # GET /earned_awards/1
  # GET /earned_awards/1.json
  def show
    @earned_award = EarnedAward.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @earned_award }
    end
  end

  # GET /earned_awards/new
  # GET /earned_awards/new.json
  def new
    @earned_award = EarnedAward.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @earned_award }
    end
  end

  # GET /earned_awards/1/edit
  def edit
    @earned_award = EarnedAward.find(params[:id])
  end

  # POST /earned_awards
  # POST /earned_awards.json
  def create
    @earned_award = EarnedAward.new(params[:earned_award])

    respond_to do |format|
      if @earned_award.save
        format.html { redirect_to @earned_award, notice: 'Earned award was successfully created.' }
        format.json { render json: @earned_award, status: :created, location: @earned_award }
      else
        format.html { render action: "new" }
        format.json { render json: @earned_award.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /earned_awards/1
  # PUT /earned_awards/1.json
  def update
    @earned_award = EarnedAward.find(params[:id])

    respond_to do |format|
      if @earned_award.update_attributes(params[:earned_award])
        format.html { redirect_to @earned_award, notice: 'Earned award was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @earned_award.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /earned_awards/1
  # DELETE /earned_awards/1.json
  def destroy
    @earned_award = EarnedAward.find(params[:id])
    @earned_award.destroy

    respond_to do |format|
      format.html { redirect_to earned_awards_url }
      format.json { head :no_content }
    end
  end
end
