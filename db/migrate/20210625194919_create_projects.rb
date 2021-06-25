class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.description :text
      t.string :image_url
      t.string :github_url

      t.timestamps
    end
  end
end
