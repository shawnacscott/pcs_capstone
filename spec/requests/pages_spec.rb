require 'spec_helper'

describe "Pages" do

  describe "Home page" do
    it "exists" do
      get root_path
      response.status.should be(200)
    end
  end

  describe "Sign up page" do
    it "exists" do
      get signup_path
      response.status.should be(200)
    end
  end

  describe "Sign in page" do
    it "exists" do
      get signin_path
      response.status.should be(200)
    end
  end
end
