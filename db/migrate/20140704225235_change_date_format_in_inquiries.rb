class ChangeDateFormatInInquiries < ActiveRecord::Migration
  def change
    change_column :inquiries, :date, :date
  end
end
