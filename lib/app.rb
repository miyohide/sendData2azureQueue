require 'azure/storage/queue'

# client = Azure::Storage::Queue::QueueService.create(
#   use_development_storage: true
# )
STORAGE_ACCOUNT_NAME = "a1"

client = Azure::Storage::Queue::QueueService.create(
  storage_account_name: STORAGE_ACCOUNT_NAME,
  storage_access_key: "k1",
  storage_queue_host: "http://127.0.0.1:10001/#{STORAGE_ACCOUNT_NAME}"
)

QUEUE_NAME = "myqueue"

client.create_queue(QUEUE_NAME)

100.times do |index|
  client.create_message(QUEUE_NAME, "test message #{index}")
end
