json.extract! company, :id, :name, :description, :start_date, :country, :cover, :created_at, :updated_at
json.url company_url(company, format: :json)
