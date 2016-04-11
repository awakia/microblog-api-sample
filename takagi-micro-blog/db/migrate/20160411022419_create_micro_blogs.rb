class CreateMicroBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :micro_blogs do |t|
      t.references :user, foreign_key: true
      t.string :body

      t.timestamps
    end
  end
end
