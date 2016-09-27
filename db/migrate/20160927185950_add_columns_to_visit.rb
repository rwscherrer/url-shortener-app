class AddColumnsToVisit < ActiveRecord::Migration[5.0]
  def change
    add_column :visits, :link_id, :integer
    add_column :visits, :ip_address, :string
  end
end
