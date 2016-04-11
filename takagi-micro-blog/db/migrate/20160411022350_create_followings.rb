class CreateFollowings < ActiveRecord::Migration[5.0]
  def change
    create_table :followings do |t|
      t.references :user, foreign_key: true
      t.references :followed_user, foreign_key: true

      t.timestamps
    end
  end
end
