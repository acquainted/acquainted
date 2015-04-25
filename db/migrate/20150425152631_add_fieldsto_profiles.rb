class AddFieldstoProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :first_name, :string
    add_column :profiles, :last_name, :string
    add_column :profiles, :position, :string
    add_column :profiles, :department, :string
    add_column :profiles, :about, :text
    add_column :profiles, :current_projects, :text
  end
end
