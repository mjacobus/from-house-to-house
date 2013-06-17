require 'spec_helper'

describe Admin::HomesController do
  it_behaves_like 'a resource' do
    let(:resource) { create(:home) }
    let(:model_class) { Home }
    let(:param_name)  { :home  }
    let(:collection_name)  { :homes  }
    let(:valid_user)  { create(:user, admin: true) }
    let(:valid_attributes)  { attributes_for(:home) }
  end

  it_behaves_like 'a login protected resource'
  
  it_behaves_like 'a protected resource' do
    let(:invalid_user) { create(:user, admin: false) } 
  end
end
