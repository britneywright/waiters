class RemoveHostInfoFromEvents < ActiveRecord::Migration
  def change
    remove_column :events, :name, :string
    remove_column :events, :email, :string
    remove_column :events, :phone, :string
  end
end
