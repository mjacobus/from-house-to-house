require 'spec_helper'

describe Admin::TerritoriesController, 'routes' do
  it_behaves_like 'routable resource' do
    let(:controller) { 'admin/territories' }
  end
end