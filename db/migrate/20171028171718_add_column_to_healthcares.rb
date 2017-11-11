class AddColumnToHealthcares < ActiveRecord::Migration[5.1]
  def change
    add_reference :healthcares, :type, foreign_key: true
  end
end
