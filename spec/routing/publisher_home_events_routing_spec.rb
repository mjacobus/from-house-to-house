require 'spec_helper'

describe  Publisher::EventsController, 'routes' do
  specify 'GET /publisher/homes/1/events routes to #index' do
    get('/publisher/homes/1/events').should route_to('publisher/events#index', home_id: '1')
  end

  specify 'GET /publisher/homes/1/events/2 routes to #show' do
    get('/publisher/homes/1/events/2').should route_to('publisher/events#show', home_id: '1', id: '2')
  end

  specify 'GET /publisher/homes/1/events/new routes to #new' do
    get('/publisher/homes/1/events/new').should route_to('publisher/events#new', home_id: '1')
  end
  
  specify 'POST /publisher/homes/1/events routes to #create' do
    post('/publisher/homes/1/events').should route_to('publisher/events#create', home_id: '1')
  end

  specify 'GET /publisher/homes/1/events/2/edit routes to #edit' do
    get('/publisher/homes/1/events/2/edit').should route_to('publisher/events#edit', home_id: '1', id: '2')
  end

  specify 'PUT /publisher/homes/1/events/2/ routes to #update' do
    put('/publisher/homes/1/events/2').should route_to('publisher/events#update', home_id: '1', id: '2')
  end

  specify 'DELETE /publisher/homes/1/events/2 routes to #destroy' do
    delete('/publisher/homes/1/events/2').should route_to('publisher/events#destroy', home_id: '1', id: '2')
  end
end
