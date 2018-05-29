require "data_bus/version"

class DataBus
  def register(&callback)
    @subscriber = callback
  end

  def publish(message)
    @subscriber.call(message)
  end
end
