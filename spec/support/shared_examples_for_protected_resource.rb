shared_examples "a protected resource" do

  let(:invalid_session) do
    sign_in invalid_user
    @session
  end 
  let(:extra_attributes) { Hash.new }

  context "when user is not logged" do
    describe "GET index" do
      it "raises access denied error" do
        expect do
          get :index, {}.merge(extra_attributes), invalid_session
        end.to raise_error(AccessDenied)
      end
    end

    describe "GET show" do
      it "raises access denied error" do
        expect do
          get :show, { id: 2 }.merge(extra_attributes), invalid_session
        end.to raise_error(AccessDenied)
      end
    end

    describe "GET new" do
      it "raises access denied error" do
        expect do
          get :new, {}.merge(extra_attributes), invalid_session
        end.to raise_error(AccessDenied)
      end
    end

    describe "GET edit" do
      it "raises access denied error" do
        expect do
          get :edit, { id: 1 }.merge(extra_attributes), invalid_session
        end.to raise_error(AccessDenied)
      end
    end

    describe "POST create" do
      it "raises access denied error" do
        expect do
          post :create, {}.merge(extra_attributes), invalid_session
        end.to raise_error(AccessDenied)
      end
    end

    describe "PUT update" do
      it "raises access denied error" do
        expect do
          put :update, { id: 1 }.merge(extra_attributes), invalid_session
        end.to raise_error(AccessDenied)
      end
    end

    describe "DELETE destroy" do
      it "redirects to login page" do
        expect do
          delete :destroy, { id: 1 }.merge(extra_attributes), invalid_session
        end.to raise_error(AccessDenied)
      end
    end

  end # context

end
