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

describe FundingsController do

  # This should return the minimal set of attributes required to create a valid
  # Funding. As you add validations to Funding, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all fundings as @fundings" do
      funding = Funding.create! valid_attributes
      get :index
      assigns(:fundings).should eq([funding])
    end
  end

  describe "GET show" do
    it "assigns the requested funding as @funding" do
      funding = Funding.create! valid_attributes
      get :show, :id => funding.id.to_s
      assigns(:funding).should eq(funding)
    end
  end

  describe "GET new" do
    it "assigns a new funding as @funding" do
      get :new
      assigns(:funding).should be_a_new(Funding)
    end
  end

  describe "GET edit" do
    it "assigns the requested funding as @funding" do
      funding = Funding.create! valid_attributes
      get :edit, :id => funding.id.to_s
      assigns(:funding).should eq(funding)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Funding" do
        expect {
          post :create, :funding => valid_attributes
        }.to change(Funding, :count).by(1)
      end

      it "assigns a newly created funding as @funding" do
        post :create, :funding => valid_attributes
        assigns(:funding).should be_a(Funding)
        assigns(:funding).should be_persisted
      end

      it "redirects to the created funding" do
        post :create, :funding => valid_attributes
        response.should redirect_to(Funding.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved funding as @funding" do
        # Trigger the behavior that occurs when invalid params are submitted
        Funding.any_instance.stub(:save).and_return(false)
        post :create, :funding => {}
        assigns(:funding).should be_a_new(Funding)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Funding.any_instance.stub(:save).and_return(false)
        post :create, :funding => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested funding" do
        funding = Funding.create! valid_attributes
        # Assuming there are no other fundings in the database, this
        # specifies that the Funding created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Funding.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => funding.id, :funding => {'these' => 'params'}
      end

      it "assigns the requested funding as @funding" do
        funding = Funding.create! valid_attributes
        put :update, :id => funding.id, :funding => valid_attributes
        assigns(:funding).should eq(funding)
      end

      it "redirects to the funding" do
        funding = Funding.create! valid_attributes
        put :update, :id => funding.id, :funding => valid_attributes
        response.should redirect_to(funding)
      end
    end

    describe "with invalid params" do
      it "assigns the funding as @funding" do
        funding = Funding.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Funding.any_instance.stub(:save).and_return(false)
        put :update, :id => funding.id.to_s, :funding => {}
        assigns(:funding).should eq(funding)
      end

      it "re-renders the 'edit' template" do
        funding = Funding.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Funding.any_instance.stub(:save).and_return(false)
        put :update, :id => funding.id.to_s, :funding => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested funding" do
      funding = Funding.create! valid_attributes
      expect {
        delete :destroy, :id => funding.id.to_s
      }.to change(Funding, :count).by(-1)
    end

    it "redirects to the fundings list" do
      funding = Funding.create! valid_attributes
      delete :destroy, :id => funding.id.to_s
      response.should redirect_to(fundings_url)
    end
  end

end
