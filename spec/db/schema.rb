ActiveRecord::Schema.define(version: 0) do
  create_table(:users, force: true) do |t|
    t.string :name
    t.string :email
    t.string :password_digest
  end

  create_table(:roles, force: true) do |t|
    t.string :name
  end

  create_table(:user_roles, force: true) do |t|
    t.references :user, foreign_key: true
    t.references :role, foreign_key: true
  end
end
