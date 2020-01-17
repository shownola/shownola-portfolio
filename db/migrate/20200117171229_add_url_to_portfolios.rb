class AddUrlToPortfolios < ActiveRecord::Migration[5.2]
  def change
    add_column :portfolios, :url, :string 
  end
end
