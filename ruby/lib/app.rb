require 'azure/storage/queue'
require 'base64'

# client = Azure::Storage::Queue::QueueService.create(
#   use_development_storage: true
# )
STORAGE_ACCOUNT_NAME = "miyohidequeue"

client = Azure::Storage::Queue::QueueService.create(
  storage_account_name: STORAGE_ACCOUNT_NAME,
  storage_access_key: "アクセスキー",
  storage_queue_host: "https://#{STORAGE_ACCOUNT_NAME}.queue.core.windows.net/"
)

QUEUE_NAME = "myqueue"

client.create_queue(QUEUE_NAME)

20.times do |index|
  client.create_message(QUEUE_NAME, Base64.encode64("test message #{index}"))
end
