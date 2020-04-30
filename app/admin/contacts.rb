ActiveAdmin.register Contact do
  permit_params :prenom, :nom, :email, :telephone, :objet, :description
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :nom, :prenom, :email, :telephone, :objet, :description
  #
  # or
  #
  # permit_params do
  #   permitted = [:nom, :prenom, :email, :telephone, :objet, :description]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
