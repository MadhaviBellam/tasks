class AppointmentsController < ApplicationController
  before_action :set_appointment,only: [:show, :edit, :update, :destroy]
  def show
  end
  def new
    @appointment = Appointment.new
  end
  def index
    @appointments = Appointment.all
  end
  def edit
  end
  def create
    @appointment = Appointment.new(appointment_params)
    if @appointment.save
      flash[:notice] = "Appointment was created succesfully."
      redirect _to @appointment
    else
      render 'new'
    end
  end
  def update
    if @appointment.update(appointment_params)
      flash[:notice] = "Appointment was updated successfully."
      redirect_to @appointment
    else
      render 'edit'
    end
  end
  def destroy
    @appointment.destroy
    redirect_to appointments_path
  end

  private
  def set_appointment
    @appointment = Appointment.find(params[:id])
  end
  def appointment_params
    params.require(:appointment).permit(:time, :date)
  end
end
