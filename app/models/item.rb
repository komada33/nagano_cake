class Item < ApplicationRecord
  has_one_attached :item_image

  has_many :cart_items
  has_many :order_details
  belongs_to :genre

  def get_item_image(width, height)
    unless item_image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      item_image.attach(io: File.open(file_path),filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    item_image.variant(resize_to_limit: [width, height]).processed

  end

  def add_tax_price
    (price * 1.10).floor
  end

  enum is_active: {stop: false, buy: true}
end
