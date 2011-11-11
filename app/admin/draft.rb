ActiveAdmin.register Draft do
menu :parent => "Menu"
 
filter :name  
filter :stocked, :as => :check_boxes


scope :all, :default => true

scope :stocked do |drafts|
  drafts.where(:stocked => true)
end

scope :out_of_stock do |drafts|
  drafts.where(:stocked => false)
end

index do
    column("Name", :sortable => :id) {|draft| link_to "#{draft.name} ", admin_draft_path(draft) }
    column("Stocked", :sortable => :stocked ){|draft|
      if draft.stocked?
        render 'stocked'
      else
        render 'not_stocked'
      end
      } 
    column("Cost"){|draft| "$#{draft.cost}0"}
    column("Price"){|draft| "$#{draft.price}0"}
    
    #    column("Date", :checked_out_at)
    #    column("Customer", :user, :sortable => :user_id)
    #    column("Total") {|order| number_to_currency order.total_price }
    default_actions
  end
  
end
