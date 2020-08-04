class AddOutputToQueries < ActiveRecord::Migration[6.0]
  def change
    add_column :queries, :output, :string
  end
end
