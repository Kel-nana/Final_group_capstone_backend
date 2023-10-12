class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.string :doc_name
      t.string :education
      t.text :bio
      t.integer :years_of_experience
      t.string :profile_pic

      t.timestamps
    end
  end
end
