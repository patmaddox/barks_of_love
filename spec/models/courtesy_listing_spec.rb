require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe CourtesyListing do
  it "should be valid with a contact phone # and a blank email" do
    new_courtesy_listing(:contact_phone => "4152978028", :contact_email => nil).
      should be_valid
  end

  it "should be valid with a contact email and a blank phone #" do
    new_courtesy_listing(:contact_email => 'pat@barksoflove.org', :contact_phone => nil).
      should be_valid
  end

  it "should not be valid with a blank contact phone # and email" do
    new_courtesy_listing(:contact_email => nil, :contact_phone => nil).
      should_not be_valid
  end
end
