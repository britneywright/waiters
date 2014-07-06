class ChangeDateColumnInInquiries < ActiveRecord::Migration
  def self.up
    rename_column :inquiries, :date, :date_entered_string
    add_column :inquiries, :date, :date

    Inquiry.reset_column_information
    Inquiry.find_each { |i| i.update_attribute(:date, i.date_entered_string)}
    remove_column :inquiries, :date_entered_string
  end
end
