class Api::V1::AppointmentsController < ApplicationController
  before_action :set_appointment, only: %i[show update destroy]
  # before_action :authenticate_user!

  def index
    @appointments = Appointment.all
    render json: @appointments
  end

  def show
    @appointment = current_user.appointments.includes(:doctor).all
    render json: @appointment
  end

  def create
    # @appointment = Appointment.new(appointment_params)
    appointment = current_user.appointments.build(appointment_params)

    if appointment.save
      render json: appointment, status: :created
    else
      render json: appointment.errors, status: :unprocessable_entity
    end
  end

  def update
    if @appointment.update(appointment_params)
      flash[:notice] = 'Appointment updated succesfully'
      render json: @appointment
    else
      flash[:alert] = 'Failed to update appointment'
      render json: @appointment.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if @appointment.destroy
      flash[:notice] = 'Appointment was deleted successfully'
      head :no_content
    else
      flash[:alert] = 'Failed to delete appointment'
      head :unprocessable_entity
    end
  end

  private

  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit(:user_id, :doctor_id, :appointment_date, :appointment_time, :location)
  end
end
