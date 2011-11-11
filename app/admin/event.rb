ActiveAdmin.register Event do
  filter :title
  filter :start
  
  index do
      column :title
      default_actions
  end  
  
  scope :all, :default => true
  
  scope :upcoming do |event|
      event.where("start > ?", Date.today)
  end
  
  scope :past do |event|
      event.where("start < ?", Date.today)
  end
  
  scope :all_day_events do |event|
    event.where(:all_day => true)
  end
  
end