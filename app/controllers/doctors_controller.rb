class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
    p @doctors
  end

end
