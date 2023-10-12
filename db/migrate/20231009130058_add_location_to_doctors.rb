class AddLocationToDoctors < ActiveRecord::Migration[7.0]
  def change
    add_column :doctors, :location, :string
  end
end
