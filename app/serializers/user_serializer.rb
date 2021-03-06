class UserSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :email, :admin, :created_at
  has_many :expenses

  link(:self) { user_url(object) }
end
