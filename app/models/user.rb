class User < ApplicationRecord
  has_secure_password
  has_many :orders
  validate :password_complexity

  def password_complexity
    if password.present?
      if !password.match(/^(?=.*[a-z])(?=.*[A-Z])/)
        errors.add :password, "Password complexity requirement not met"
      end
    end
  end

  def previous_orders
    self.orders.where(status: 2).includes(order_items: :product)
  end
end
