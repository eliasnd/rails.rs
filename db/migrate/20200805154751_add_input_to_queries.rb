class AddInputToQueries < ActiveRecord::Migration[6.0]
  def change
    add_column :queries, :sample_field, :string
  end
end
