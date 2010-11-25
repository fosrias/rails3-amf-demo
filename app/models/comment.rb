class Comment < ActiveRecord::Base

  register_amf :actionscript  => 'vos.Comment',
               :ruby          => 'Comment',
               :type          => 'active_record',
               :associations  => ["action"],
               :attributes    => ["id", "description", "post_id"]

  belongs_to :post

  belongs_to :action,
             :class_name => 'Action',
             :foreign_key => :code,
             :primary_key => :code

  validates_presence_of :action

end
