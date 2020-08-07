class AddUserRefToQuery < ActiveRecord::Migration[6.0]
  def change
    add_reference :queries, :user, null: false, foreign_key: true
  end
end
