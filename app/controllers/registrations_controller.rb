class RegistrationsController < ApplicationController
  before_action :authenticate_user!

  def create
    total_price = get_total_price(registration_params)
    @registration = current_user.registrations.create(registration_params.merge(total: total_price))
    redirect_to @registration.event, notice: "Thank you for your registration!"
  end

  private

  def get_total_price(registration_params)

    registration_params[:price].to_i * guests_count
  end


  def registration_params
    params.require(:registration).permit(:price, :event_id)
  end
end
