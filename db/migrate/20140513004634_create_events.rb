class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.date :event_date
      t.string :city

      t.timestamps
    end
  end
end
