class DropHealthcares < ActiveRecord::Migration[5.1]
  def up
    drop_table :healthcares
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
