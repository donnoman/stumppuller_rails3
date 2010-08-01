require 'spec_helper'

describe VersionsController do
  before :each do
    File.should_receive(:read).with(File.join(Rails.root,'VERSION')).and_return("3.2.1\n")
  end
  context "as html" do
    it "should respond" do
      get :index
      assigns(:versions)[:version].should eq("3.2.1")
      response.should be_success
    end
  end
  context "as json" do
    it "should respond" do
      get :index, :format => :json
      assigns(:versions)[:version].should eq("3.2.1")
      response.should be_success
    end
  end
end
