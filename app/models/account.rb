class Account < ApplicationRecord
  has_many :account_moviments

  after_create do
    broadcast_prepend_to "accounts"
  end
  after_destroy_commit do
    broadcast_remove_to "accounts"
  end
end
