module UserRoles
  extend ActiveSupport::Concern

  included do
    enum role: { regular: 0, admin: 1 }
  end
end
