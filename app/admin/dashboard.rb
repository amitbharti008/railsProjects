# frozen_string_literal: true
ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    div class: "dashboard-header", style: "background-color: #e73c3c; color: #ffffff; padding: 20px; text-align: center;" do
      h1 style: "color: #ffffff;" do
        "Welcome to Your Dashboard"
      end
      p "Here you can find all the information you need."
    end

    columns do
      column style: "background-color: #ecf0f1; border-radius: 10px; overflow: hidden; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);" do
        panel "Recent Content", class: "dashboard-panel" do
          ul do
            Content.order(created_at: :desc).limit(5).map do |content|
              li link_to(content.name, admin_content_path(content))
            end
          end
        end
      end
    end
  end
end
