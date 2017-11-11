class AddColumnTypesIdToPictures < ActiveRecord::Migration[5.1]
  def change
    add_reference :pictures, :type, foreign_key: true
  end
end
