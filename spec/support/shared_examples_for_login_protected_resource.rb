shared_examples "a login protected resource" do
  let(:login_path) { '/users/sign_in' }


  context "when user is not logged" do
    describe "GET index" do
      it "redirects to login page" do
        get :index
        response.should redirect_to login_path 
      end
    end

    describe "GET show" do
      it "redirects to login page" do
        get :show, id: 1
        response.should redirect_to login_path 
      end
    end

    describe "GET new" do
      it "redirects to login page" do
        get :new
        response.should redirect_to login_path 
      end
    end

    describe "GET edit" do
      it "redirects to login page" do
        get :edit, id: 1
        response.should redirect_to login_path 
      end
    end


    describe "POST create" do
      it "redirects to login page" do
        post :create
        response.should redirect_to login_path 
      end
    end


    describe "PUT update" do
      it "redirects to login page" do
        put :update, id: 1
        response.should redirect_to login_path 
      end
    end


    describe "DELETE destroy" do
      it "redirects to login page" do
        delete :destroy, id: 1
        response.should redirect_to login_path 
      end
    end

  end # context

end
