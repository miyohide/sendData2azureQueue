require 'azure/storage/queue'

client = Azure::Storage::Queue::QueueService.create(
  use_development_storage: true
)

QUEUE_NAME = "myqueue"

client.create_queue(QUEUE_NAME)

100.times do |index|
  client.create_message(QUEUE_NAME, "test message #{index}")
end
