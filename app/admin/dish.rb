ActiveAdmin.register Dish do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :title, :price, :description, :category_id, :rest_id
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
index do
  selectable_column
  id_column
  column :title do |dish|
    link_to dish.title, admin_dish_path(dish)
  end
  column :price
  column :description
  column :rest
  column :category  
  actions
end

form do |f|
  f.inputs do
    f.input :rest
    f.input :category
    f.input :title
    f.input :price
    f.input :description
    f.input :counter, :as => :hidden, :value => 0
  end
  f.actions
end

end
