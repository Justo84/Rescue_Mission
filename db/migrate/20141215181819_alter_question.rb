class AlterQuestion < ActiveRecord::Migration
  def change
    remove_column :questions, :description, :string
  end
end
