class PagesController < ApplicationController

  def home
    @variable=4
  end

  def conf
    @variable = "bob"
  end
end
