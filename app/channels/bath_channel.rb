# Be sure to restart your server when you modify this file. Action Cable runs in an EventMachine loop that does not support auto reloading.
class BathChannel < ApplicationCable::Channel
  def subscribed
    stream_from "bath_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
