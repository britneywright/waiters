class CreateWaiters < ActiveRecord::Migration
  def change
    create_table :waiters do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :city

      t.timestamps
    end
  end
end
