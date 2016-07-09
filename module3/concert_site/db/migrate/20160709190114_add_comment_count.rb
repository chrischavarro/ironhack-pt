class AddCommentCount < ActiveRecord::Migration[5.0]
  def change
  	add_column :concerts, :comment_count, :integer, default: 0
  end
end
