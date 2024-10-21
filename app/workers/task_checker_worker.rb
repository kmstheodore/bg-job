class TaskCheckerWorker
  include Sidekiq::Worker

  def perform
    tasks = Task.all
    tasks.each do |task|
      puts "#{task.id}: #{task.title} HELOOOO I AM THEO"
    end
  end
end
