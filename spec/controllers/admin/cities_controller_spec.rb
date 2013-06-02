require 'spec_helper'

describe Admin::CitiesController do
  it_behaves_like 'a resource' do
    let(:resource) { create(:city) }
    let(:model_class) { City }
    let(:param_name)  { :city  }
    let(:collection_name)  { :cities  }
    let(:valid_user)  { create(:user, admin: true) }
    let(:valid_attributes)  { attributes_for(:city) }
  end

  it_behaves_like 'a login protected resource'
  
  it_behaves_like 'a protected resource' do
    let(:invalid_user) { create(:user, admin: false) } 
  end
end
