class CreateUsersCollections < ActiveRecord::Migration
  def change
    create_table :users_collections do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
