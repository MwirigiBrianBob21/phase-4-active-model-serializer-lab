class AuthorSerializer < ActiveModel::Serializer
  attributes :name

  # def name

  #   "#{self.object.name}"
  #   # byebug
  # end

  has_one :profile
  has_many :posts, serializer: AuthorPostSerializer
  
end
