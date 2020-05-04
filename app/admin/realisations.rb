ActiveAdmin.register Realisation do
  permit_params :titre, :description, :lieu, :categorie_id, :photos

  show do |realisation|
    attributes_table do
      row :titre
      row :description
      row :lieu
      row :categorie_id
      row :photos do
        realisation.photos.each do |photo|
          image_tag url_for(photo)
        end
      end
    end
  end

  form do |f|
    f.inputs do
      f.input :titre
      f.input :description
      f.input :lieu
      f.input :categorie_id
      f.input :photos, as: :file, input_html: { multiple: true }
      f.submit
    end
  end
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
