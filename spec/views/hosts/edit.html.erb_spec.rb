require 'spec_helper'

describe "hosts/edit" do
  before(:each) do
    @host = assign(:host, stub_model(Host,
      :name => "MyString",
      :email => "MyString",
      :phone => "MyString"
    ))
  end

  it "renders the edit host form" do
    render

    assert_select "form[action=?][method=?]", host_path(@host), "post" do
      assert_select "input#host_name[name=?]", "host[name]"
      assert_select "input#host_email[name=?]", "host[email]"
      assert_select "input#host_phone[name=?]", "host[phone]"
    end
  end
end
