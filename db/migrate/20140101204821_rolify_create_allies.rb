class RolifyCreateAllies < ActiveRecord::Migration
  def change
    create_table(:allies) do |t|
      t.string :name
      t.references :resource, :polymorphic => true

      t.timestamps
    end

    create_table(:users_allies, :id => false) do |t|
      t.references :user
      t.references :ally
    end

    add_index(:allies, :name)
    add_index(:allies, [ :name, :resource_type, :resource_id ])
    add_index(:users_allies, [ :user_id, :ally_id ])
  end
end
