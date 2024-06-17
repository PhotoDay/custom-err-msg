ActiveRecord::Schema.define(version: 0) do
  create_table :users do |t|
    t.string :name
    t.string :email
    t.string :password
    t.string :roles
  end

  create_table :roles do |t|
    t.string :role
    t.string :name
  end
  
  create_table :user_roles do |t|
    t.references :user
    t.references :role
  end
end
