class Order < ApplicationRecord
  belongs_to :user
  has_many :items

  def subtotal
    items.collect { |i| i.valid? ? (i.quantity * i.unit_price) : 0 }.sum
  end

private
  def update_subtotal
    self[:subtotal] = subtotal
  end
end
