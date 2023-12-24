# frozen_string_literal: true
class SimulatorChannel < ApplicationCable::Channel
  def subscribed
    stream_from "SimulatorChannel"
    # receive("A new user has joined the chat room.")
    # ActionCable.server.broadcast("SimulatorChannel", "A new user has joined the chat room. #{current_user}")
  end

  # def send_to_all(message)
  #   send_to_all("A new user has joined the chat room.")
  # end
  def receive(data)
    # Handle received data here
    # Rails.logger.debug "received data"
      # handle_realTC(data["data"])
    ActionCable.server.broadcast "SimulatorChannel", JSON.parse(data["data"])
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
  def simulate(data)
    # This method will be called when 'your_action' is performed
    # Do something with the data received from the client
    ActionCable.server.broadcast "SimulatorChannel", JSON.parse(data["data"])
  end
end
