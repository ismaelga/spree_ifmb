class AddIfmbReferenceToPayments < ActiveRecord::Migration
  def up
    add_column :spree_payments, :ifmb_reference, :string
    add_index :spree_payments, :ifmb_reference, unique: true
  end

  def down
    remove_column :spree_payments, :ifmb_reference, :string
  end
end
