class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    	t.string :title
    	t.string :content
    	t.references :author
    	t.references :category
    end
  end
end
