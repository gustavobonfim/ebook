class CreateTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :types do |t|
      t.string :name, default: "", null: false
      t.string :code, default: "", null: false

      t.timestamps
    end
  end
end
