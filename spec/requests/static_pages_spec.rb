require 'spec_helper'

describe "Static pages" do
  describe "Home page" do
    it "should have the content 'Home Page'" do
      visit '/'
      expect(page).to have_button('Become a Waiter')
      expect(page).to have_button('Staff an Event')
    end

    it "should fill out waiters form" do
      visit '/'
      within('.waiter-inquiry') do
        fill_in "Name", :with => "John Doe"
        fill_in "Email", :with => "example@example.com"
        fill_in "Phone", :with => "1231234567"
        fill_in "City", :with => "Takoma"
        click_button "Create Waiter"
      end  
    end

    it "should fill out events form" do
      visit '/'
      within('.event-inquiry') do
        fill_in "Name", :with => "John Doe"
        fill_in "Email", :with => "example@example.com"
        fill_in "Phone", :with => "1231234567"
        select "2014", :from => "event[event_date(1i)]"
        select "May", :from => "event[event_date(2i)]"
        select "30", :from => "event[event_date(3i)]"
        fill_in "City", :with => "Takoma"     
        click_button "Create Event"
      end
    end    
  end
end
