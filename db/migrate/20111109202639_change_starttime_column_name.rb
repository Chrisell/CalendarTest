class ChangeStarttimeColumnName < ActiveRecord::Migration
  def up
    rename_column :events, :starttime, :start
    rename_column :events, :endtime, :end
  end

  def down
    rename_column :events, :start, :starttime
    rename_column :events, :endtime, :end
  end
end
