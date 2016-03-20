Sequel.migration do
  up do
    add_column :users, :updated_at, DateTime
    add_column :users, :created_at, DateTime
  end

  down do
    drop_column :users, :updated_at
    drop_column :users, :created_at
  end
  
end
