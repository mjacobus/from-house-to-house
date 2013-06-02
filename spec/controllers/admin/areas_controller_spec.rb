require 'spec_helper'

describe Admin::AreasController do
  it_behaves_like 'a resource' do
    let(:resource) { create(:area) }
    let(:model_class) { Area }
    let(:param_name)  { :area  }
    let(:collection_name)  { :areas  }
    let(:valid_user)  { create(:user, admin: true) }
    let(:valid_attributes)  { attributes_for(:area).merge(city_id: create(:city).id.to_s) }
  end

  it_behaves_like 'a login protected resource'
  
  it_behaves_like 'a protected resource' do
    let(:invalid_user) { create(:user, admin: false) } 
  end
end
