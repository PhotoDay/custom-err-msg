ActiveRecord::Schema.define(version: 0) do
  create_table :users, force: true do |t|
    t.string :name
    t.string :email
    t.string :password
    t.string :roles
  end

  create_table :roles, force: true do |t|
    t.string :role
    t.string :name
  end
  
  create_table :user_roles, force: true do |t|
    t.belongs_to :user
    t.belongs_to :role
  end
end
