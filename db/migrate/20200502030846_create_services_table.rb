class CreateServicesTable < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
      t.string :name

      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
