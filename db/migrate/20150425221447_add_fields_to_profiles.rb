class AddFieldsToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :avatar_s, :string
    add_column :profiles, :avatar_l, :string
  end
end
