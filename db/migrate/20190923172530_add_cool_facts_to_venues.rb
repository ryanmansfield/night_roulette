class AddCoolFactsToVenues < ActiveRecord::Migration[5.2]
  def change
    add_column :venues, :cool_facts, :string, array: true, default: []
  end
end
