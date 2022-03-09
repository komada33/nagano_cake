class Item < ApplicationRecord
  has_one_attached :item_image

  def get_item_image(size)
    unless item_image.attached?
      file_path = Rails.root.join('app/assets/images/sample-author1.jpg')
      item_image.attach(io: File.open(file_path),filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    profile_image.variant(resize: size).processed

  end
end
