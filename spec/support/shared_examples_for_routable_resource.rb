shared_examples_for "routable resource" do

  it "GETs index" do
    get("#{controller}").should route_to("#{controller}#index")
  end

  it "GETs show" do
    get("#{controller}/1").should route_to("#{controller}#show", id: '1')
  end

  it "GETs new" do
    get("#{controller}/new").should route_to("#{controller}#new")
  end

  it "GETs edit" do
    get("#{controller}/1/edit").should route_to("#{controller}#edit", id: '1')
  end

  it "POSTs create" do
    post("#{controller}").should route_to("#{controller}#create")
  end

  it "PUTSs update" do
    put("#{controller}/1").should route_to("#{controller}#update", id: '1')
  end

  it "DELETEs destroy" do
    delete("#{controller}/1").should route_to("#{controller}#destroy", id: '1')
  end

end