class CreateUserProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :user_profiles do |t|
      t.references :profilable, polymorphic: true, index: true
      t.timestamps
    end
  end
end
