class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :position
      t.string :department
      t.text :about
      t.text :current_projects
      t.text :karma
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :profiles, :users
  end
end
