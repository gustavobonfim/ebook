class Healthcare < ApplicationRecord

  belongs_to :type

  has_attached_file :image

end
