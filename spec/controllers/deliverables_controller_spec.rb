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

describe DeliverablesController do

  # This should return the minimal set of attributes required to create a valid
  # Deliverable. As you add validations to Deliverable, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all deliverables as @deliverables" do
      deliverable = Deliverable.create! valid_attributes
      get :index
      assigns(:deliverables).should eq([deliverable])
    end
  end

  describe "GET show" do
    it "assigns the requested deliverable as @deliverable" do
      deliverable = Deliverable.create! valid_attributes
      get :show, :id => deliverable.id.to_s
      assigns(:deliverable).should eq(deliverable)
    end
  end

  describe "GET new" do
    it "assigns a new deliverable as @deliverable" do
      get :new
      assigns(:deliverable).should be_a_new(Deliverable)
    end
  end

  describe "GET edit" do
    it "assigns the requested deliverable as @deliverable" do
      deliverable = Deliverable.create! valid_attributes
      get :edit, :id => deliverable.id.to_s
      assigns(:deliverable).should eq(deliverable)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Deliverable" do
        expect {
          post :create, :deliverable => valid_attributes
        }.to change(Deliverable, :count).by(1)
      end

      it "assigns a newly created deliverable as @deliverable" do
        post :create, :deliverable => valid_attributes
        assigns(:deliverable).should be_a(Deliverable)
        assigns(:deliverable).should be_persisted
      end

      it "redirects to the created deliverable" do
        post :create, :deliverable => valid_attributes
        response.should redirect_to(Deliverable.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved deliverable as @deliverable" do
        # Trigger the behavior that occurs when invalid params are submitted
        Deliverable.any_instance.stub(:save).and_return(false)
        post :create, :deliverable => {}
        assigns(:deliverable).should be_a_new(Deliverable)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Deliverable.any_instance.stub(:save).and_return(false)
        post :create, :deliverable => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested deliverable" do
        deliverable = Deliverable.create! valid_attributes
        # Assuming there are no other deliverables in the database, this
        # specifies that the Deliverable created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Deliverable.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => deliverable.id, :deliverable => {'these' => 'params'}
      end

      it "assigns the requested deliverable as @deliverable" do
        deliverable = Deliverable.create! valid_attributes
        put :update, :id => deliverable.id, :deliverable => valid_attributes
        assigns(:deliverable).should eq(deliverable)
      end

      it "redirects to the deliverable" do
        deliverable = Deliverable.create! valid_attributes
        put :update, :id => deliverable.id, :deliverable => valid_attributes
        response.should redirect_to(deliverable)
      end
    end

    describe "with invalid params" do
      it "assigns the deliverable as @deliverable" do
        deliverable = Deliverable.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Deliverable.any_instance.stub(:save).and_return(false)
        put :update, :id => deliverable.id.to_s, :deliverable => {}
        assigns(:deliverable).should eq(deliverable)
      end

      it "re-renders the 'edit' template" do
        deliverable = Deliverable.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Deliverable.any_instance.stub(:save).and_return(false)
        put :update, :id => deliverable.id.to_s, :deliverable => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested deliverable" do
      deliverable = Deliverable.create! valid_attributes
      expect {
        delete :destroy, :id => deliverable.id.to_s
      }.to change(Deliverable, :count).by(-1)
    end

    it "redirects to the deliverables list" do
      deliverable = Deliverable.create! valid_attributes
      delete :destroy, :id => deliverable.id.to_s
      response.should redirect_to(deliverables_url)
    end
  end

end
