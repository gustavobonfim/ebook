class AddColumnGalleryIdToPictures < ActiveRecord::Migration[5.1]
  def change
    add_reference :pictures, :gallery, foreign_key: true
  end
end
