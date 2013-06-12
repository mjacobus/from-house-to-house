require 'spec_helper'

describe Admin::UsersController do

  describe "GET index" do
    before do
      @user = create(:user, admin: true) 
      sign_in(@user)
      get :index, {}, @session 
    end

    it "responds with success" do
      response.should be_success
    end

    it "assigns resources to collection" do
      assigns(:users).should eq([@user])
    end
  end

  it_behaves_like 'a resource', {except: [:index]} do 
    let(:resource) { create(:user) }
    let(:model_class) { User }
    let(:param_name)  { :user  }
    let(:collection_name)  { :users  }
    let(:valid_user)  { create(:user, admin: true) }
    let(:valid_attributes)  { attributes_for(:user, password: "password") }
    let(:hole) { :admin } 
  end

  it_behaves_like 'a login protected resource'
  
  it_behaves_like 'a protected resource' do
    let(:invalid_user) { create(:user, admin: false) } 
  end
  
  specify "when current user tries to destroy itself it wont work" do
    user = create(:user, admin: true)
    sign_in(user)
    expect do
      delete :destroy, {id: user.id}, @session
    end.not_to change(User, :count)
  end
end
