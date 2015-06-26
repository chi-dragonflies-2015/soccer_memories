class CreateUser < ActiveRecord::Migration
  def change
    create_table do |t|
      t.string :username
      t.string :password
    end

  end
end
