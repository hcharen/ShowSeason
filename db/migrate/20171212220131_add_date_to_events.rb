class AddDateToEvents < ActiveRecord::Migration[5.1]
  def change
    rename_column :events, :date, :date
  end
end
