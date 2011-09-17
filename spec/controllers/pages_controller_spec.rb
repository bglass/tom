require 'spec_helper'

describe PagesController do

  describe "GET 'tables'" do
    it "should be successful" do
      get 'tables'
      response.should be_success
    end
  end

end
