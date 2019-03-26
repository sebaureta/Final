json.extract! task, :id, :details, :image, :created_at, :updated_at
json.url task_url(task, format: :json)
