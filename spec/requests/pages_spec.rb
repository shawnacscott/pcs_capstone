require 'spec_helper'

describe "Pages" do

  describe "Home page" do
    it "exists" do
      get root_path
      response.status.should be(200)
    end
  end

end
