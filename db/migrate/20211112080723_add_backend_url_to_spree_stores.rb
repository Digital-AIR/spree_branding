class AddBackendUrlToSpreeStores < ActiveRecord::Migration[6.1]
  def change
    add_column :spree_stores, :backend_url, :string
  end
end
