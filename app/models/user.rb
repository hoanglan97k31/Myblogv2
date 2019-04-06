class User < ApplicationRecord
  devise :database_authenticatable, authentication_keys: [:username]

  validates :name, length: { within: 3..250 }
  validates :username, uniqueness: true, length: { within: 3..250 },
                       format: { with: /\A[a-z0-9][a-z0-9_\-]*\z/i }
  validates :password, length: { within: 6..40 }

  # required when not field email
  def email_required?
    false
  end

  def email_changed?
    false
  end

  def admin?
    type == 'Admin'
  end
end
