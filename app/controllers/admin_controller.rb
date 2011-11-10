class AdminController < ApplicationController

  def index
    @events = Event.all
    @drafts = Draft.all
  end
  
end
