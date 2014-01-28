class AddAttachmentIconToPaymentMethods < ActiveRecord::Migration
  def self.up
    change_table :spree_payment_methods do |t|
      t.attachment :icon
    end
  end

  def self.down
    drop_attached_file :spree_payment_methods, :icon
  end
end
