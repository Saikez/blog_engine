class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.string :name
    	t.string :content
    	t.references :post
    end
  end
end
