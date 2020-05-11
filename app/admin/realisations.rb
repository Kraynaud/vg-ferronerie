ActiveAdmin.register Realisation do
  permit_params :titre, :description, :lieu, :categorie_id, :pictures, :user_id

  show do |realisation|
    attributes_table do
      row :titre
      row :description
      row :lieu
      row :categorie_id do
        realisation.categorie.titre
      end
      row :pictures do
        realisation.pictures.each do |picture|
          picture.photo
        end
      end
    end
  end

  form do |f|
    f.inputs do
      inputs 'Choisir categorie' do
        f.collection_select(:user_id, User.all, :id, :email)
      end
      f.input :titre
      f.input :description
      f.input :lieu
      inputs 'Choisir categorie' do
        f.collection_select(:categorie_id, Categorie.all, :id, :titre)
      end
      f.submit
    end
  end

  index do
    selectable_column
    column :id
    column :titre
    column :description
    column :lieu
    column :categorie
    column :created_at
    actions
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

