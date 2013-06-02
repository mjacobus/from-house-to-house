require 'spec_helper'

describe Admin::AreasController, 'routes' do
  it_behaves_like 'routable resource' do
    let(:controller) { 'admin/areas' }
  end
end
