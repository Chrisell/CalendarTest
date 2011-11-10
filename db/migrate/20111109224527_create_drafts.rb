class CreateDrafts < ActiveRecord::Migration
  def change
    create_table :drafts do |t|
      t.string :name
      t.text :description
      t.boolean :stocked
      t.decimal :cost
      t.decimal :price

      t.timestamps
    end
  end
end
