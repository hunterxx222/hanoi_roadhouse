class FoodItem < ApplicationRecord
  has_many :orders, dependent: :destroy
  belongs_to :section
  validates :name, :section, :price, presence: true

  def show_image_url
    if image_url.present?
      image_url
    else
      "http://loremflickr.com/320/240/#{CGI.escape name}"
    end
  end
end
