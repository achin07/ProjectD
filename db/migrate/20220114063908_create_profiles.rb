class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :job_title
      t.string :exp
      t.string :overview
      t.string :highlights
      t.string :prim_skill
      t.string :sec_skill
      t.string :company_name
      t.string :com_position
      t.date :to_date
      t.date :from_date
      t.string :description
      t.string :project_name
      t.string :project_url
      t.string :tech_stack
      t.string :project_desc
      t.string :school_string
      t.string :degree
      t.date :to_date_school
      t.date :from_date_school

      t.timestamps
    end
  end
end
