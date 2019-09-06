class CreateSecrets < ActiveRecord::Migration[6.0]
  def change
    create_table :secrets do |t|
      t.string :name
      t.text :photo_data

      t.timestamps
    end
  end
end
