require 'rails_helper'

RSpec.describe ProspectsController, type: :controller do

  it 'connection successful' do
    request.accept = 'application/json'
    get :index

    expect(response).to be_success
  end

  describe "check contents" do

    context 'Has contents already been delivered?' do
      it "with contents have been delivered in the past" do
        expect(controller.contents_delivered?(['a', 'b', 'c'], ['c', 'e', 'a'])).to be true
      end

      it "with contents have not been delivered in the past" do
        expect(controller.contents_delivered?(['a', 'b', 'f'], ['c', 'e', 'g'])).to be false
      end

      it "with emptied contents" do
        expect(controller.contents_delivered?([], ['c', 'e', 'g'])).to be false
      end
    end

  end

end
