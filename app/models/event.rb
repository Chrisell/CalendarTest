class Event < ActiveRecord::Base
  scope :not_past , where("start < ?", Date.today)
end
