class Menu < ActiveRecord::Base
  has_many :whiskeys
  has_many :drafts
  
  validates_presence_of :title, :on => :create
  
end
