# frozen_string_literal: true

class PagesController < ApplicationController
  def home
    @message = "Hello, World!"
  end
end
