class CreateInquiries < ActiveRecord::Migration
  def change
    create_table :inquiries do |t|
      t.string :role
      t.string :name
      t.string :city
      t.string :email
      t.string :phone
      t.string :date
      t.string :license

      t.timestamps
    end
  end
end
