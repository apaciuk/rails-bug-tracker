 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/bugs", type: :request do
  # Bug. As you add validations to Bug, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Bug.create! valid_attributes
      get bugs_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      bug = Bug.create! valid_attributes
      get bug_url(bug)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_bug_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      bug = Bug.create! valid_attributes
      get edit_bug_url(bug)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Bug" do
        expect {
          post bugs_url, params: { bug: valid_attributes }
        }.to change(Bug, :count).by(1)
      end

      it "redirects to the created bug" do
        post bugs_url, params: { bug: valid_attributes }
        expect(response).to redirect_to(bug_url(Bug.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Bug" do
        expect {
          post bugs_url, params: { bug: invalid_attributes }
        }.to change(Bug, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post bugs_url, params: { bug: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested bug" do
        bug = Bug.create! valid_attributes
        patch bug_url(bug), params: { bug: new_attributes }
        bug.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the bug" do
        bug = Bug.create! valid_attributes
        patch bug_url(bug), params: { bug: new_attributes }
        bug.reload
        expect(response).to redirect_to(bug_url(bug))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        bug = Bug.create! valid_attributes
        patch bug_url(bug), params: { bug: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested bug" do
      bug = Bug.create! valid_attributes
      expect {
        delete bug_url(bug)
      }.to change(Bug, :count).by(-1)
    end

    it "redirects to the bugs list" do
      bug = Bug.create! valid_attributes
      delete bug_url(bug)
      expect(response).to redirect_to(bugs_url)
    end
  end
end
