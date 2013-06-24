require 'spec_helper'

describe Publisher::EventsController do
  it_behaves_like 'a resource' do
    let(:home) { create(:home)  }
    let(:resource) { create(:event, home: home) }
    let(:model_class) { Event }
    let(:param_name)  { :event  }
    let(:collection_name)  { :events  }
    let(:valid_user)  { create(:user, publisher: true) }
    let(:valid_attributes)  do
      attributes_for(:event).merge(
        publisher_id: create(:user, publisher: true).id.to_s
      ) 
    end
    let(:extra_attributes) { {home_id: home.id}  }
  end
                                                                                                                                     
  it_behaves_like 'a login protected resource' do
    let(:extra_attributes) { {home_id: '1'}  }
  end
 
  it_behaves_like 'a protected resource' do
    let(:invalid_user) { create(:user, publisher: false) } 
    let(:extra_attributes) { {home_id: '1'}  }
  end
end
