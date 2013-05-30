shared_examples_for "a resource" do
  let(:valid_session) do
    sign_in valid_user
    @session
  end


  describe "GET index" do
    before { get :index, {}, valid_session }

    it "responds with success" do
      response.should be_success
    end

    it "assigns resources to collection" do
      assigns(collection_name).should eq([])
    end
  end

  describe "GET show" do
    before { get :show, {id: resource.id}, valid_session }

    it "responds with success" do
      response.should be_success
    end

    it "assigns a resource to an instance variable" do
      assigns(param_name).should be_a(model_class)
    end
  end

  describe "GET new" do
    before { get :new, {}, valid_session }

    it "responds with success" do
      response.should be_success
    end

    it "renders 'new' template" do
      response.should render_template(:new)
    end

    it "instantiates a new record" do
      assigns(param_name).should be_a_new(model_class)
    end
  end

  describe "POST create" do
    context "with valid params" do
      it "creates record" do
        expect do
          post :create, { param_name => valid_attributes }, valid_session
        end.to change(model_class, :count).by(1)
      end

      it "redirects to index page" do
        post :create, { param_name => valid_attributes }, valid_session
        response.should redirect_to(action: :show, id: Territory.last.id)
      end
    end

    context "with invalid params" do
      it "re-renders form" do
        post :create, { param_name => {} }, valid_session
        response.should be_success
        response.should render_template(:new)
      end
    end
  end

  describe "GET edit" do
    before { get :edit, {id: resource.id}, valid_session }

    it "responds with success" do
      response.should be_success
    end
    
    it "reders 'edit' template" do
      response.should render_template(:edit)
    end
    
    it "assigns resource to an instance var" do
      assigns(param_name).should eq(resource) 
    end
  end

  describe "PUT update" do
    context "with valid params" do
      it "updates record" do
        model_class.any_instance.should_receive(:update_attributes).with(valid_attributes.stringify_keys)
        put :update, {id: resource.id, param_name => valid_attributes}, valid_session
      end
      
      it "redirects to record page" do
        put :update, {id: resource.id, param_name => valid_attributes}, valid_session
        response.should redirect_to(action: :show, id: resource.id)
      end
    end

    context "with invalid params" do
      it "re-renders 'edit' page" do
        pending "test failing. Revise"
        put :update, {id: resource.id, param_name => {}}, valid_session
        response.should be_success
        response.should render_template(:edit) 
      end
    end
  end

  describe "DELETE destroy" do
    it "destroy record" do
      id = resource.id
      expect do
        delete :destroy, {id: id}, valid_session 
      end.to change(model_class, :count).by(-1)
    end

    it "redirects to the index action" do
      delete :destroy, {id: resource.id}, valid_session
      response.should redirect_to(action: :index)
    end
  end

end
