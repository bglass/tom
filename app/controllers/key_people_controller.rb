class KeyPeopleController < ApplicationController
  # GET /key_people
  # GET /key_people.json
  def index
    @key_people = KeyPerson.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @key_people }
    end
  end

  # GET /key_people/1
  # GET /key_people/1.json
  def show
    @key_person = KeyPerson.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @key_person }
    end
  end

  # GET /key_people/new
  # GET /key_people/new.json
  def new
    @key_person = KeyPerson.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @key_person }
    end
  end

  # GET /key_people/1/edit
  def edit
    @key_person = KeyPerson.find(params[:id])
  end

  # POST /key_people
  # POST /key_people.json
  def create
    @key_person = KeyPerson.new(params[:key_person])

    respond_to do |format|
      if @key_person.save
        format.html { redirect_to @key_person, notice: 'Key person was successfully created.' }
        format.json { render json: @key_person, status: :created, location: @key_person }
      else
        format.html { render action: "new" }
        format.json { render json: @key_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /key_people/1
  # PUT /key_people/1.json
  def update
    @key_person = KeyPerson.find(params[:id])

    respond_to do |format|
      if @key_person.update_attributes(params[:key_person])
        format.html { redirect_to @key_person, notice: 'Key person was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @key_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /key_people/1
  # DELETE /key_people/1.json
  def destroy
    @key_person = KeyPerson.find(params[:id])
    @key_person.destroy

    respond_to do |format|
      format.html { redirect_to key_people_url }
      format.json { head :ok }
    end
  end
end
