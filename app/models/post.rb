class Post < ActiveRecord::Base

  attr_accessor :test_attribute

  register_amf :actionscript  => 'vos.Post',
               :ruby          => 'Post',
               :type          => 'active_record',
               :associations  => ["comments", "author", "categories"],
               :attributes    => ["id", "name"]

  has_one  :author,
           :class_name => 'PostAuthor',
           :dependent => :destroy

  has_many :comments

  has_many :categories,
           :conditions => 'parent_id is null'

  has_many :moderators

  validates_associated  :comments
  validates_associated  :author
  validates_presence_of :author

  accepts_nested_attributes_for :author, :comments, :categories

end
