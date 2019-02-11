class Review
  include Mongoid::Document
  include Mongoid::Timestamps
  include ActiveModel::Validations
  belongs_to :post

  field :title, type: String
  field :content, type: String

  validates_presence_of :title
  validates_length_of :content, maximum: 30, message: 'maximum of 30 characters'
end
