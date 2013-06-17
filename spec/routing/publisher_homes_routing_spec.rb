require 'spec_helper'

describe Publisher::HomesController, 'routes' do
  it_behaves_like 'routable resource' do
    let(:controller) { 'publisher/homes' }
  end
end
