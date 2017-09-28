class CreateTags < ActiveRecord::Migration[5.0]
  def change
    create_table :tags do |t|
      t.string :title
      t.text :body
      t.string :url

      t.timestamps
    end
  end
end
