class DriftingsController < ApplicationController
  def index
    @drifting = Drifting.all
  end
end
