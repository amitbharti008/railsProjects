# app/models/admin_user.rb

class AdminUser < ApplicationRecord
  devise :database_authenticatable, :recoverable, :rememberable, :validatable

  # Add the following method to make AdminUser attributes searchable
  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "email", "id", "updated_at"]
  end
end
