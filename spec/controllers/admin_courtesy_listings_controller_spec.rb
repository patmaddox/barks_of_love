require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe AdminCourtesyListingsController, "GET index" do
  it "should be successful" do
    create_courtesy_listing :dog_name => 'Bibby'
    create_courtesy_listing :dog_name => 'Smiley'
    get :index
    response.should be_success
  end
end
