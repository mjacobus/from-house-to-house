require 'spec_helper'

describe Admin::CitiesController, 'routes' do
  it_behaves_like 'routable resource' do
    let(:controller) { 'admin/cities' }
  end
end
