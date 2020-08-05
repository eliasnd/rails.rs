class RemoveOutputFromQueries < ActiveRecord::Migration[6.0]
  def change
    remove_column :queries, :output, :string
  end
end
