class PatientController < ApplicationController
  def lookup
    @patient = Patient.find(params[:id])
  end
end
