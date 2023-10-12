class Api::V1::DoctorsController < ApplicationController
  before_action :set_doctor, only: %i[show update destroy]
  # before_action :authenticate_user!

  def index
    @doctors = Doctor.all.includes(:appointments)
    render json: @doctors
  end

  def show
    render json: @doctor
  end

  def create
    @doctor = Doctor.new(doctor_params)

    if @doctor.save
      render json: @doctor, status: :created
    else
      render json: @doctor.errors, status: :unprocessable_entity
    end
  end

  def update
    if @doctor.update(doctor_params)
      flash[:notice] = 'Doctor updated successfully'
      render json: @doctor
    else
      flash[:alert] = 'Failed to update doctor'
      render json: @doctor.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if @doctor.destroy
      flash[:notice] = 'Doctor deleted successfully'
      head :no_content
    else
      flash[:alert] = 'Failed to delete doctor'
      head :unprocessable_entity
    end
  end

  private

  def set_doctor
    @doctor = Doctor.find(params[:id])
  end

  def doctor_params
    params.require(:doctor).permit(:doc_name, :education, :bio, :years_of_experience, :profile_pic, :location)
  end
end
