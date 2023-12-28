# app/admin/content.rb

ActiveAdmin.register Content do
    permit_params :name, :description, :image
  
    index do
        selectable_column
        id_column
        column :name
        column :description
        column :image do |content|
          image_tag(content.image.url, width: 50, height: 50) if content.image.present?
        end
        actions
      end
  
    form do |f|
        f.inputs 'Content Details' do
          f.input :name
          f.input :description
          f.input :image, as: :file
        end
        f.actions
      end

      show do
        attributes_table do
          row :name
          row :description
          row :image do |content|
            image_tag(content.image.url) if content.image.present?
          end
        end
        active_admin_comments
      end
  end
  