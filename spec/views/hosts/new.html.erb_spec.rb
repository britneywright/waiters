require 'spec_helper'

describe "hosts/new" do
  before(:each) do
    assign(:host, stub_model(Host,
      :name => "MyString",
      :email => "MyString",
      :phone => "MyString"
    ).as_new_record)
  end

  it "renders new host form" do
    render

    assert_select "form[action=?][method=?]", hosts_path, "post" do
      assert_select "input#host_name[name=?]", "host[name]"
      assert_select "input#host_email[name=?]", "host[email]"
      assert_select "input#host_phone[name=?]", "host[phone]"
    end
  end
end
