json.extract! profile, :id, :name, :image, :job_title, :exp, :overview, :highlights, :prim_skill, :sec_skill, :company_name, :com_position, :to_date, :from_date, :description, :project_name, :project_url, :tech_stack, :project_desc, :school_string, :degree, :to_date_school, :from_date_school, :created_at, :updated_at
json.url profile_url(profile, format: :json)
