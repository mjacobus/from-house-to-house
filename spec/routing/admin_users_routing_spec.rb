require 'spec_helper'

describe Admin::UsersController, 'routes' do
  it_behaves_like 'routable resource' do
    let(:controller) { 'admin/users' }
  end
end
