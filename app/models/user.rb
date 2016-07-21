class User < ActiveRecord::Base
  extend Enumerize

  enumerize :sex, in: %w(male female), predicates: true, scope: :sexy
  enumerize :role, in: { user: 1, admin: 2, sub_admin: 3 }, default: :user
end
