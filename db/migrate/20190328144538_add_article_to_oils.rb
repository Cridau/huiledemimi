class AddArticleToOils < ActiveRecord::Migration[5.2]
  def change
    add_column :oils, :article, :text
  end
end
