require "spec_helper"

describe ProductsController do
  render_views

  describe "GET #index" do
    before do
      get :index
    end

    it "is a successful request" do
      response.should be_successful
    end

    it "renders the index view" do
      response.should render_template(:index)
    end
  end

  describe "GET #new" do
    before do
      get :new
    end

    it "is a successful request" do
      response.should be_successful
    end

    it "renders the index view" do
      response.should render_template(:new)
    end
  end

  describe "POST #create" do
    before do
      post :create, :product => { :name => "test", :description => "test" }
    end

    it "redirects to products path" do
      response.should redirect_to(products_path)
    end
  end
end
