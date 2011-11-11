ActiveAdmin::Dashboards.build do
  
  # ActiveAdmin.register Event, :as => "Events"
  # ActiveAdmin.register Draft, :as => "Drafts"
  # Define your dashboard sections here. Each block will be
  # rendered on the dashboard in the context of the view. So just
  # return the content which you would like to display.
  
  # == Simple Dashboard Section
  # Here is an example of a simple dashboard section
  #
    section "Upcoming Events" , :priority => 1 do
        div do
          render 'upcoming_events'
        end
      end
      
    section "Current Menu stock", :priority => 2 do
      table_for Draft.order('name desc').limit(10).where(:stocked => true).each do |d|
        column("Drafts (#{Draft.where(:stocked =>true).count})") {|d| link_to(d.name, admin_draft_path(d)) }
      end
      table_for Whiskey.order('name desc').limit(10).each do |d|
        column("Whiskey (#{Whiskey.where(:stocked =>true).count})") {|d| link_to(d.name, admin_whiskey_path(d)) }
         
      end
    end
  
  # == Render Partial Section
  # The block is rendered within the context of the view, so you can
  # easily render a partial rather than build content in ruby.
  #
  #   section "Recent Posts" do
  #     div do
  #       render 'recent_posts' # => this will render /app/views/admin/dashboard/_recent_posts.html.erb
  #     end
  #   end
  
  # == Section Ordering
  # The dashboard sections are ordered by a given priority from top left to
  # bottom right. The default priority is 10. By giving a section numerically lower
  # priority it will be sorted higher. For example:
  #
  #   section "Recent Posts", :priority => 10
  #   section "Recent User", :priority => 1
  #
  # Will render the "Recent Users" then the "Recent Posts" sections on the dashboard.

end
