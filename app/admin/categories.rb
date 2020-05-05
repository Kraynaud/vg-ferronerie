ActiveAdmin.register Categorie do
  permit_params :titre, :description, :photo

  show do |categorie|
    attributes_table do
      row :titre
      row :description
      row :photo do
        image_tag url_for(categorie.photo)
      end
    end
  end

  form do |f|
    f.inputs do
      f.input :titre
      f.input :description
      f.input :photo, as: :file
      f.submit
    end
  end
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :titre, :description
  #
  # or
  #
  # permit_params do
  #   permitted = [:titre, :description]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
