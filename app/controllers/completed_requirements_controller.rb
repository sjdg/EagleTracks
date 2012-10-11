class CompletedRequirementsController < ApplicationController
  # GET /completed_requirements
  # GET /completed_requirements.json
  def index
    @completed_requirements = CompletedRequirement.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @completed_requirements }
    end
  end

  # GET /completed_requirements/1
  # GET /completed_requirements/1.json
  def show
    @completed_requirement = CompletedRequirement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @completed_requirement }
    end
  end

  # GET /completed_requirements/new
  # GET /completed_requirements/new.json
  def new
    @completed_requirement = CompletedRequirement.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @completed_requirement }
    end
  end

  # GET /completed_requirements/1/edit
  def edit
    @completed_requirement = CompletedRequirement.find(params[:id])
  end

  # POST /completed_requirements
  # POST /completed_requirements.json
  def create
    @completed_requirement = CompletedRequirement.new(params[:completed_requirement])

    respond_to do |format|
      if @completed_requirement.save
        format.html { redirect_to @completed_requirement, notice: 'Completed requirement was successfully created.' }
        format.json { render json: @completed_requirement, status: :created, location: @completed_requirement }
      else
        format.html { render action: "new" }
        format.json { render json: @completed_requirement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /completed_requirements/1
  # PUT /completed_requirements/1.json
  def update
    @completed_requirement = CompletedRequirement.find(params[:id])

    respond_to do |format|
      if @completed_requirement.update_attributes(params[:completed_requirement])
        format.html { redirect_to @completed_requirement, notice: 'Completed requirement was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @completed_requirement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /completed_requirements/1
  # DELETE /completed_requirements/1.json
  def destroy
    @completed_requirement = CompletedRequirement.find(params[:id])
    @completed_requirement.destroy

    respond_to do |format|
      format.html { redirect_to completed_requirements_url }
      format.json { head :no_content }
    end
  end
end
