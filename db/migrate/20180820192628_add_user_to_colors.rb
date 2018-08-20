class AddUserToColors < ActiveRecord::Migration[5.1]
  def change
    add_reference :colors, :user, foreign_key: true
  end
end
