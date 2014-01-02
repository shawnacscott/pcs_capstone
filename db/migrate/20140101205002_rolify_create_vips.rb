class RolifyCreateVips < ActiveRecord::Migration
  def change
    create_table(:vips) do |t|
      t.string :name
      t.references :resource, :polymorphic => true

      t.timestamps
    end

    create_table(:users_vips, :id => false) do |t|
      t.references :user
      t.references :vip
    end

    add_index(:vips, :name)
    add_index(:vips, [ :name, :resource_type, :resource_id ])
    add_index(:users_vips, [ :user_id, :vip_id ])
  end
end
