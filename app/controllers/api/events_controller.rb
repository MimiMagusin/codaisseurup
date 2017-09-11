class Api::EventsController < Api::BaseController


  def index
    events = Event.all
    render status: 200, json: events
  end

  def show
    event = Event.find(params[:id])
    render status: 200, json: event
  end

  def create
    event = Event.new(event_params)

    if event.save
      render status: 200, json: event
    else
      render status: 422, json: {
        errors: event.errors
      }.to_json
    end
  end

  def destroy
    event = Event.find(params[:id])
    event.destroy

    render status: 200, json: {
      message: "event successfully deleted"
    }.to_json
  end

  def update
    event = Event.find(params[:id])

    if event.update(event_params)
      render status: 200, json: event
    else
      render status: 500, json: {
        message: "The event could not be updated",
        errors: event.errors
      }.to_json
    end
  end



  private

  def event_params
    params.require(:event).permit(:name, :description, :price, :active, theme_ids: [])
  end
end
