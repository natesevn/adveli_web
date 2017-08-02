json.extract! job, :id, :role, :about_you, :requirements, :location, :created_at, :updated_at
json.url job_url(job, format: :json)
