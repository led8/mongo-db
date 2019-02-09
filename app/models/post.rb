class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  include ActiveModel::Validations

  field :title, type: String
  field :body, type: String
  field :url, type: String

  validates_presence_of :title
  validates_length_of :body, maximum: 30, message: 'maximum of 30 characters'
  validates_format_of :url, with: /\A(^www+.+\w+.+(com|fr|io|org)$)\z/
end
