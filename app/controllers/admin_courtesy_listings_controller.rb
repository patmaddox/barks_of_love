class AdminCourtesyListingsController < ApplicationController
  def index
    @verified_listings = CourtesyListing.verified
    @pending_listings = CourtesyListing.pending
  end
end
