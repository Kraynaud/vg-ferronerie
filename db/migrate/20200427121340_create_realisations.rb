class CreateRealisations < ActiveRecord::Migration[5.2]
  def change
    create_table :realisations do |t|
      t.string :titre
      t.text :description
      t.string :lieu
      t.references :user, foreign_key: true
      t.references :categorie, foreign_key: true

      t.timestamps
    end
  end
end
