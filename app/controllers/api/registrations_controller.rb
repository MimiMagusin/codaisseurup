class Api::RegistrationsController < Api::BaseController
  before_action :set_event

  def create
    registration = @event.registrations.new(registration_params)

    if registration.save
      render status: 200, json: {
        message: "registration successfully created",
        event: @event,
        registration: registration
      }.to_json
    else
      render status: 422, json: {
        message: "registration could not be created",
        errors: registration.errors
      }.to_json
    end
  end

  private

  def set_event
    @event = Event.find(params[:event_id])
  end

  def registration_params
    params.require(:registration).permit(:guests_count)
  end
end
