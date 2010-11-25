#require 'composite_primary_keys'
class PostAuthor < ActiveRecord::Base

  #set_primary_keys :post_id, :name

  register_amf :actionscript  => 'vos.PostAuthor',
               :ruby          => 'PostAuthor',
               :type          => 'active_record',
               :attributes    => ["post_id", "name", "description"]

end
