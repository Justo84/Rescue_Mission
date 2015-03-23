class AlterQuestion2 < ActiveRecord::Migration
  def change
    add_column :questions, :description, :text, null: false
  end
end
