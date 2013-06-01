require 'spec_helper'

describe Admin::TerritoriesController do
  it_behaves_like 'a resource' do
    let(:resource) { create(:territory) }
    let(:model_class) { Territory }
    let(:param_name)  { :territory  }
    let(:collection_name)  { :territories  }
    let(:valid_user)  { create(:user, admin: true) }
    let(:valid_attributes)  { attributes_for(:territory).merge(city_id: create(:city).id.to_s) }
  end

  it_behaves_like 'a login protected resource'
  
  it_behaves_like 'a protected resource' do
    let(:invalid_user) { create(:user, admin: false) } 
  end
end
