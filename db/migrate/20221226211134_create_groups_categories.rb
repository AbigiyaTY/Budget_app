class CreateGroupsCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :groups_categories do |t|
      t.references :group, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.timestamps
    end
  end
end
