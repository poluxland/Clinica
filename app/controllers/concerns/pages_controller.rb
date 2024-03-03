class PagesController < ApplicationController
skip_before_action :authenticate_user!, only: [:index]
  def index
    # Any logic for the index action
  end
end
