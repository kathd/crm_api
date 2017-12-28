class OutreachesController < ApplicationController

  def create
    @outreach = Outreach.create(outreach_params)
    # flash[:success] = " added!"
    redirect_to '/'
  end

end
