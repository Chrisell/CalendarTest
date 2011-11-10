class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :starttime
      t.datetime :endtime
      t.boolean :all_day
      t.text :description
      t.integer :event_series_id

      t.timestamps
    end
  end
end
