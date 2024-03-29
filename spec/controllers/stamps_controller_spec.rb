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

describe StampsController do

  # This should return the minimal set of attributes required to create a valid
  # Stamp. As you add validations to Stamp, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all stamps as @stamps" do
      stamp = Stamp.create! valid_attributes
      get :index
      assigns(:stamps).should eq([stamp])
    end
  end

  describe "GET show" do
    it "assigns the requested stamp as @stamp" do
      stamp = Stamp.create! valid_attributes
      get :show, :id => stamp.id.to_s
      assigns(:stamp).should eq(stamp)
    end
  end

  describe "GET new" do
    it "assigns a new stamp as @stamp" do
      get :new
      assigns(:stamp).should be_a_new(Stamp)
    end
  end

  describe "GET edit" do
    it "assigns the requested stamp as @stamp" do
      stamp = Stamp.create! valid_attributes
      get :edit, :id => stamp.id.to_s
      assigns(:stamp).should eq(stamp)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Stamp" do
        expect {
          post :create, :stamp => valid_attributes
        }.to change(Stamp, :count).by(1)
      end

      it "assigns a newly created stamp as @stamp" do
        post :create, :stamp => valid_attributes
        assigns(:stamp).should be_a(Stamp)
        assigns(:stamp).should be_persisted
      end

      it "redirects to the created stamp" do
        post :create, :stamp => valid_attributes
        response.should redirect_to(Stamp.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved stamp as @stamp" do
        # Trigger the behavior that occurs when invalid params are submitted
        Stamp.any_instance.stub(:save).and_return(false)
        post :create, :stamp => {}
        assigns(:stamp).should be_a_new(Stamp)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Stamp.any_instance.stub(:save).and_return(false)
        post :create, :stamp => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested stamp" do
        stamp = Stamp.create! valid_attributes
        # Assuming there are no other stamps in the database, this
        # specifies that the Stamp created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Stamp.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => stamp.id, :stamp => {'these' => 'params'}
      end

      it "assigns the requested stamp as @stamp" do
        stamp = Stamp.create! valid_attributes
        put :update, :id => stamp.id, :stamp => valid_attributes
        assigns(:stamp).should eq(stamp)
      end

      it "redirects to the stamp" do
        stamp = Stamp.create! valid_attributes
        put :update, :id => stamp.id, :stamp => valid_attributes
        response.should redirect_to(stamp)
      end
    end

    describe "with invalid params" do
      it "assigns the stamp as @stamp" do
        stamp = Stamp.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Stamp.any_instance.stub(:save).and_return(false)
        put :update, :id => stamp.id.to_s, :stamp => {}
        assigns(:stamp).should eq(stamp)
      end

      it "re-renders the 'edit' template" do
        stamp = Stamp.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Stamp.any_instance.stub(:save).and_return(false)
        put :update, :id => stamp.id.to_s, :stamp => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested stamp" do
      stamp = Stamp.create! valid_attributes
      expect {
        delete :destroy, :id => stamp.id.to_s
      }.to change(Stamp, :count).by(-1)
    end

    it "redirects to the stamps list" do
      stamp = Stamp.create! valid_attributes
      delete :destroy, :id => stamp.id.to_s
      response.should redirect_to(stamps_url)
    end
  end

end
