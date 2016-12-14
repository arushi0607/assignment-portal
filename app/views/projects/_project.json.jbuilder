json.extract! project, :id, :name, :description, :deadline, :created_at, :updated_at
json.url project_url(project, format: :json)