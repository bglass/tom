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

describe FoundriesController do

  # This should return the minimal set of attributes required to create a valid
  # Foundry. As you add validations to Foundry, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all foundries as @foundries" do
      foundry = Foundry.create! valid_attributes
      get :index
      assigns(:foundries).should eq([foundry])
    end
  end

  describe "GET show" do
    it "assigns the requested foundry as @foundry" do
      foundry = Foundry.create! valid_attributes
      get :show, :id => foundry.id.to_s
      assigns(:foundry).should eq(foundry)
    end
  end

  describe "GET new" do
    it "assigns a new foundry as @foundry" do
      get :new
      assigns(:foundry).should be_a_new(Foundry)
    end
  end

  describe "GET edit" do
    it "assigns the requested foundry as @foundry" do
      foundry = Foundry.create! valid_attributes
      get :edit, :id => foundry.id.to_s
      assigns(:foundry).should eq(foundry)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Foundry" do
        expect {
          post :create, :foundry => valid_attributes
        }.to change(Foundry, :count).by(1)
      end

      it "assigns a newly created foundry as @foundry" do
        post :create, :foundry => valid_attributes
        assigns(:foundry).should be_a(Foundry)
        assigns(:foundry).should be_persisted
      end

      it "redirects to the created foundry" do
        post :create, :foundry => valid_attributes
        response.should redirect_to(Foundry.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved foundry as @foundry" do
        # Trigger the behavior that occurs when invalid params are submitted
        Foundry.any_instance.stub(:save).and_return(false)
        post :create, :foundry => {}
        assigns(:foundry).should be_a_new(Foundry)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Foundry.any_instance.stub(:save).and_return(false)
        post :create, :foundry => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested foundry" do
        foundry = Foundry.create! valid_attributes
        # Assuming there are no other foundries in the database, this
        # specifies that the Foundry created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Foundry.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => foundry.id, :foundry => {'these' => 'params'}
      end

      it "assigns the requested foundry as @foundry" do
        foundry = Foundry.create! valid_attributes
        put :update, :id => foundry.id, :foundry => valid_attributes
        assigns(:foundry).should eq(foundry)
      end

      it "redirects to the foundry" do
        foundry = Foundry.create! valid_attributes
        put :update, :id => foundry.id, :foundry => valid_attributes
        response.should redirect_to(foundry)
      end
    end

    describe "with invalid params" do
      it "assigns the foundry as @foundry" do
        foundry = Foundry.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Foundry.any_instance.stub(:save).and_return(false)
        put :update, :id => foundry.id.to_s, :foundry => {}
        assigns(:foundry).should eq(foundry)
      end

      it "re-renders the 'edit' template" do
        foundry = Foundry.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Foundry.any_instance.stub(:save).and_return(false)
        put :update, :id => foundry.id.to_s, :foundry => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested foundry" do
      foundry = Foundry.create! valid_attributes
      expect {
        delete :destroy, :id => foundry.id.to_s
      }.to change(Foundry, :count).by(-1)
    end

    it "redirects to the foundries list" do
      foundry = Foundry.create! valid_attributes
      delete :destroy, :id => foundry.id.to_s
      response.should redirect_to(foundries_url)
    end
  end

end
