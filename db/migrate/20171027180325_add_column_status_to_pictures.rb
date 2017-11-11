class AddColumnStatusToPictures < ActiveRecord::Migration[5.1]
  def change
    add_column :pictures, :status, :string, default: "Não Pago", null: false
  end
end
