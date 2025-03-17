json.extract! hiring_process, :id, :company, :position, :recruiter, :status, :reached_me, :created_at, :updated_at
json.url hiring_process_url(hiring_process, format: :json)
