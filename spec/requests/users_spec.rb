require 'spec_helper'

describe "Users" do
  
  subject {page }

  describe "signup page" do
    before { vist signup_path }

    it { should have_content('sign in') }
    it { should have_title(full_title('Sign in')) }   
end
  end