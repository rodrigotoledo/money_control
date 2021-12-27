class AccountMoviment < ApplicationRecord
  belongs_to :account

  after_create do
    broadcast_replace_to "accounts", target: "account_#{self.account_id}", partial: "accounts/account", locals: {account: self.account}
  end
end
