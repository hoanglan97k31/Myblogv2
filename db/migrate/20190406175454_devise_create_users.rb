# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, null: false, default: ''
      ## Database authenticatable
      t.string :username, null: false, default: ''
      t.string :encrypted_password, null: false, default: ''

      ##type: admin, operator
      t.string :type, null: false, default: ''

      t.timestamps null: false
    end

    add_index :users, :username, unique: true
  end
end
