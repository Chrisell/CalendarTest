ActiveAdmin.register Whiskey do
  menu :parent => "Menu"

filter :name  
filter :stocked, :as => :check_boxes


scope :all, :default => true

scope :stocked do |whiskey|
  whiskey.where(:stocked => true)
end

scope :out_of_stock do |whiskey|
  whiskey.where(:stocked => false)
end

index do
    column("Name", :sortable => :id) {|whiskey| link_to "#{draft.name} ", admin_whiskey_path(whiskey) }
    column("Stocked", :sortable => :stocked ){|whiskey|
      if whiskey.stocked?
        render 'stocked'
      else
        render 'not_stocked'
      end
      } 
    column("Cost"){|whiskey| "$#{whiskey.cost}0"}
    column("Price"){|whiskey| "$#{whiskey.price}0"}
    
    #    column("Date", :checked_out_at)
    #    column("Customer", :user, :sortable => :user_id)
    #    column("Total") {|order| number_to_currency order.total_price }
    default_actions
  end
  
end