class NursesController < ApplicationController
  def index
    @nurses = Nurse.all
  end
end
