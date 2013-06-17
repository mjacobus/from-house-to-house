require 'spec_helper'

describe Admin::HomesController, 'routes' do
  it_behaves_like 'routable resource' do
    let(:controller) { 'admin/homes' }
  end
end
