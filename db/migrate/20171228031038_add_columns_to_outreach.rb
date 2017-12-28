class AddColumnsToOutreach < ActiveRecord::Migration[5.0]
  def change
    add_column :outreaches, :lead_id, :integer
    add_column :outreaches, :latest_outreach, :text
  end
end
