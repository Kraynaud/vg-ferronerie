ActiveAdmin.register Picture do
  permit_params :photo, :realisation_id, :name

  show do |picture|
    attributes_table do
      row :name
      row :photo do
        image_tag url_for(picture.photo)
      end
      row :realisation_id do
        picture.realisation.titre
      end
    end
  end

  form do |f|
    f.inputs do
      f.input :name
      inputs 'Choisir realisation' do
        f.collection_select(:realisation_id, Realisation.all, :id, :titre)
      end
      inputs 'Sélectionner photo' do
        f.input :photo, as: :file
      end
      f.submit
    end
  end

  index do
    selectable_column
    column :id
    column :name
    column :realisation
    column :created_at
    actions
  end
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :realisation_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :realisation_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
