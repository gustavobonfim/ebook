class CreateHealthcare < ActiveRecord::Migration[5.1]
  def change
    create_table :healthcares do |t|
      t.string :name
    end
  end
end
