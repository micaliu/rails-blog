class CreateUserInfos < ActiveRecord::Migration
  def change
    create_table :user_infos do |t|
      t.string :firstname, :null => false
      t.string :lastname, :null => false
      t.text :profile, :null => true

      t.timestamps null: false
    end
  end
end
