class MenuController < ApplicationController
     
  
  def index
    @drafts = Draft.all
    @whiskeys = Whiskey.all
  end

  def drafts
  end

  def whiskeys
     @whiskeys = Whiskey.all
  end

  def cans
  end

  def cocktails
  end

  def food
  end

end
