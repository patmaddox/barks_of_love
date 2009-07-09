class CourtesyListingsController < ApplicationController
  resource_controller

  create.success.wants.html { render :action => "thank_you" }
end
