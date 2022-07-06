class PostSerializer < ActiveModel::Serializer
  attributes :title, :short_content, :content


  belongs_to :author  
  has_many :tags, through: :post_tags

  def short_content
    "#{self.object.content[0..39]}..."
  end
end
