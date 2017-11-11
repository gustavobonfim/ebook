class AddColumnYMCNToPictures < ActiveRecord::Migration[5.1]
  def change
    add_column :pictures, :year, :string, default: "", null: false
    add_column :pictures, :month, :string, default: "", null: false
    add_column :pictures, :code, :string, default: "", null: false
    add_column :pictures, :name, :string, default: "", null: false
  end
end
