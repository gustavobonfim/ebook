class CreateGalleries < ActiveRecord::Migration[5.1]
  def change
    create_table :galleries do |t|
      t.string :name, default: "", null: false
      t.string :description, default: "", null: false

      t.timestamps
    end
  end
end