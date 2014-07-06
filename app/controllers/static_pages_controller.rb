class StaticPagesController < ApplicationController
  def home
    @inquiry = Inquiry.new
  end
end