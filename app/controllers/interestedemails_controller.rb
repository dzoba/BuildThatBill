class InterestedemailsController < ApplicationController

  def index

  end

  def create
    @email = InterestedEmail.new
    @email.email = params[:interestedemail][:iemail]
    @email.save

    render :nothing => true
  end

  def recordemail
    @email = InterestedEmail.new
    @email.email = params[:interestedemail][:iemail]
    @email.save

    render :nothing => true
  end
end
