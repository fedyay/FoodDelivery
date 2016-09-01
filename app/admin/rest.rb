ActiveAdmin.register Rest do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
permit_params :title, :description, :image

form do |f|
  f.inputs do
    f.input :title
    f.input :description
    f.input :image, :as => :file, :hint => image_tag(f.object.image.url(:thumb))
  end
  f.actions
end

index do
    selectable_column
    id_column
    column :image do |rest|
      image_tag rest.image.url(:thumb)
    end
    column :title do |rest|
      link_to rest.title, admin_rest_path(rest)
    end
    column :description
    actions
  end

end
