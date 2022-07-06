class TagSerializer < ActiveModel::Serializer
  attributes :id

  has_many :post_tags
  has_many :posts, through: :post_tags
end
