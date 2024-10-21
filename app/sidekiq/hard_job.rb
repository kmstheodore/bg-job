class HardJob
  include Sidekiq::Job

  def perform(*args)
    message = "hello"
    message
  end
end
