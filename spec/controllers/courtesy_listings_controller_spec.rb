require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe CourtesyListingsController, "GET new" do
  it "should be successful" do
    get :new
    response.should be_success
  end
end

describe CourtesyListingsController, "POST create" do
  it "should render a success message" do
    post :create, :courtesy_listing => valid_courtesy_listing_attributes(:dog_name => 'Bibby')
    response.body.should include('Thank you', 'Bibby', 'listed', 'verify')
  end
end
