require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe CompletedRequirementsController do

  # This should return the minimal set of attributes required to create a valid
  # CompletedRequirement. As you add validations to CompletedRequirement, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # CompletedRequirementsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all completed_requirements as @completed_requirements" do
      completed_requirement = CompletedRequirement.create! valid_attributes
      get :index, {}, valid_session
      assigns(:completed_requirements).should eq([completed_requirement])
    end
  end

  describe "GET show" do
    it "assigns the requested completed_requirement as @completed_requirement" do
      completed_requirement = CompletedRequirement.create! valid_attributes
      get :show, {:id => completed_requirement.to_param}, valid_session
      assigns(:completed_requirement).should eq(completed_requirement)
    end
  end

  describe "GET new" do
    it "assigns a new completed_requirement as @completed_requirement" do
      get :new, {}, valid_session
      assigns(:completed_requirement).should be_a_new(CompletedRequirement)
    end
  end

  describe "GET edit" do
    it "assigns the requested completed_requirement as @completed_requirement" do
      completed_requirement = CompletedRequirement.create! valid_attributes
      get :edit, {:id => completed_requirement.to_param}, valid_session
      assigns(:completed_requirement).should eq(completed_requirement)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new CompletedRequirement" do
        expect {
          post :create, {:completed_requirement => valid_attributes}, valid_session
        }.to change(CompletedRequirement, :count).by(1)
      end

      it "assigns a newly created completed_requirement as @completed_requirement" do
        post :create, {:completed_requirement => valid_attributes}, valid_session
        assigns(:completed_requirement).should be_a(CompletedRequirement)
        assigns(:completed_requirement).should be_persisted
      end

      it "redirects to the created completed_requirement" do
        post :create, {:completed_requirement => valid_attributes}, valid_session
        response.should redirect_to(CompletedRequirement.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved completed_requirement as @completed_requirement" do
        # Trigger the behavior that occurs when invalid params are submitted
        CompletedRequirement.any_instance.stub(:save).and_return(false)
        post :create, {:completed_requirement => {}}, valid_session
        assigns(:completed_requirement).should be_a_new(CompletedRequirement)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        CompletedRequirement.any_instance.stub(:save).and_return(false)
        post :create, {:completed_requirement => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested completed_requirement" do
        completed_requirement = CompletedRequirement.create! valid_attributes
        # Assuming there are no other completed_requirements in the database, this
        # specifies that the CompletedRequirement created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        CompletedRequirement.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => completed_requirement.to_param, :completed_requirement => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested completed_requirement as @completed_requirement" do
        completed_requirement = CompletedRequirement.create! valid_attributes
        put :update, {:id => completed_requirement.to_param, :completed_requirement => valid_attributes}, valid_session
        assigns(:completed_requirement).should eq(completed_requirement)
      end

      it "redirects to the completed_requirement" do
        completed_requirement = CompletedRequirement.create! valid_attributes
        put :update, {:id => completed_requirement.to_param, :completed_requirement => valid_attributes}, valid_session
        response.should redirect_to(completed_requirement)
      end
    end

    describe "with invalid params" do
      it "assigns the completed_requirement as @completed_requirement" do
        completed_requirement = CompletedRequirement.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        CompletedRequirement.any_instance.stub(:save).and_return(false)
        put :update, {:id => completed_requirement.to_param, :completed_requirement => {}}, valid_session
        assigns(:completed_requirement).should eq(completed_requirement)
      end

      it "re-renders the 'edit' template" do
        completed_requirement = CompletedRequirement.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        CompletedRequirement.any_instance.stub(:save).and_return(false)
        put :update, {:id => completed_requirement.to_param, :completed_requirement => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested completed_requirement" do
      completed_requirement = CompletedRequirement.create! valid_attributes
      expect {
        delete :destroy, {:id => completed_requirement.to_param}, valid_session
      }.to change(CompletedRequirement, :count).by(-1)
    end

    it "redirects to the completed_requirements list" do
      completed_requirement = CompletedRequirement.create! valid_attributes
      delete :destroy, {:id => completed_requirement.to_param}, valid_session
      response.should redirect_to(completed_requirements_url)
    end
  end

end
