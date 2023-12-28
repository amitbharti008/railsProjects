class Content < ApplicationRecord
    # Your existing code...
    # has_one_attached :image ,dependent: :destroy
    mount_uploader :image, ImageUploader
  
    def self.ransackable_attributes(auth_object = nil)
      ["created_at", "name", "id", "updated_at", "description", "image"]
    end
  
    def self.ransackable_associations(auth_object = nil)
      []
    end
  
    # Your existing code...
  end
  