class CreateAdmins < ActiveRecord::Migration[6.1]
  def change
    create_table :admins do |t|
      t.string :name, null: false, unique: true, varchar: 100
      t.string :email, null: false, unique: true, varchar: 100
      t.string :password, null: false, varchar:60

      t.timestamps
    end
  end
end
