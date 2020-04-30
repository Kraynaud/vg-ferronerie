ActiveAdmin.register Realisation do
  permit_params :titre, :description, :lieu, :categorie_id
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :titre, :description, :lieu, :user_id, :categorie_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:titre, :description, :lieu, :user_id, :categorie_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
