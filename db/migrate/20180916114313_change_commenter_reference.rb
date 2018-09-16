class ChangeCommenterReference < ActiveRecord::Migration[5.2]
  def change
    remove_column :reviews, :commenter
    add_reference :reviews, :user, index: true
  end
end
