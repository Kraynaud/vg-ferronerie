class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :nom
      t.string :prenom
      t.string :email
      t.string :telephone
      t.string :objet
      t.text :description

      t.timestamps
    end
  end
end
