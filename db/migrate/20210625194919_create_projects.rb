class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.string :github_url
      t.text :label
      t.string :blog_url

      t.timestamps
    end
  end
end
