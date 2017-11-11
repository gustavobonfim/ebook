class Picture < ApplicationRecord

  belongs_to :gallery
  belongs_to :type

  has_attached_file :image

  do_not_validate_attachment_file_type :image

  def set_type(code)
    self.type_id = Type.find_by(code: code).id
    self.save
  end

end
