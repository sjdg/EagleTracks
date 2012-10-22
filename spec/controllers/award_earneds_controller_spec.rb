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

describe AwardEarnedsController do

  # This should return the minimal set of attributes required to create a valid
  # AwardEarned. As you add validations to AwardEarned, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # AwardEarnedsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all award_earneds as @award_earneds" do
      award_earned = AwardEarned.create! valid_attributes
      get :index, {}, valid_session
      assigns(:award_earneds).should eq([award_earned])
    end
  end

  describe "GET show" do
    it "assigns the requested award_earned as @award_earned" do
      award_earned = AwardEarned.create! valid_attributes
      get :show, {:id => award_earned.to_param}, valid_session
      assigns(:award_earned).should eq(award_earned)
    end
  end

  describe "GET new" do
    it "assigns a new award_earned as @award_earned" do
      get :new, {}, valid_session
      assigns(:award_earned).should be_a_new(AwardEarned)
    end
  end

  describe "GET edit" do
    it "assigns the requested award_earned as @award_earned" do
      award_earned = AwardEarned.create! valid_attributes
      get :edit, {:id => award_earned.to_param}, valid_session
      assigns(:award_earned).should eq(award_earned)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new AwardEarned" do
        expect {
          post :create, {:award_earned => valid_attributes}, valid_session
        }.to change(AwardEarned, :count).by(1)
      end

      it "assigns a newly created award_earned as @award_earned" do
        post :create, {:award_earned => valid_attributes}, valid_session
        assigns(:award_earned).should be_a(AwardEarned)
        assigns(:award_earned).should be_persisted
      end

      it "redirects to the created award_earned" do
        post :create, {:award_earned => valid_attributes}, valid_session
        response.should redirect_to(AwardEarned.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved award_earned as @award_earned" do
        # Trigger the behavior that occurs when invalid params are submitted
        AwardEarned.any_instance.stub(:save).and_return(false)
        post :create, {:award_earned => {}}, valid_session
        assigns(:award_earned).should be_a_new(AwardEarned)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        AwardEarned.any_instance.stub(:save).and_return(false)
        post :create, {:award_earned => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested award_earned" do
        award_earned = AwardEarned.create! valid_attributes
        # Assuming there are no other award_earneds in the database, this
        # specifies that the AwardEarned created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        AwardEarned.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => award_earned.to_param, :award_earned => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested award_earned as @award_earned" do
        award_earned = AwardEarned.create! valid_attributes
        put :update, {:id => award_earned.to_param, :award_earned => valid_attributes}, valid_session
        assigns(:award_earned).should eq(award_earned)
      end

      it "redirects to the award_earned" do
        award_earned = AwardEarned.create! valid_attributes
        put :update, {:id => award_earned.to_param, :award_earned => valid_attributes}, valid_session
        response.should redirect_to(award_earned)
      end
    end

    describe "with invalid params" do
      it "assigns the award_earned as @award_earned" do
        award_earned = AwardEarned.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        AwardEarned.any_instance.stub(:save).and_return(false)
        put :update, {:id => award_earned.to_param, :award_earned => {}}, valid_session
        assigns(:award_earned).should eq(award_earned)
      end

      it "re-renders the 'edit' template" do
        award_earned = AwardEarned.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        AwardEarned.any_instance.stub(:save).and_return(false)
        put :update, {:id => award_earned.to_param, :award_earned => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested award_earned" do
      award_earned = AwardEarned.create! valid_attributes
      expect {
        delete :destroy, {:id => award_earned.to_param}, valid_session
      }.to change(AwardEarned, :count).by(-1)
    end

    it "redirects to the award_earneds list" do
      award_earned = AwardEarned.create! valid_attributes
      delete :destroy, {:id => award_earned.to_param}, valid_session
      response.should redirect_to(award_earneds_url)
    end
  end

end
