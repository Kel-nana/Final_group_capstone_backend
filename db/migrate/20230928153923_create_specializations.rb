class CreateSpecializations < ActiveRecord::Migration[7.0]
  def change
    create_table :specializations do |t|
      t.references :doctor, null: false, foreign_key: true
      t.string :field_of_specialization

      t.timestamps
    end
  end
end
