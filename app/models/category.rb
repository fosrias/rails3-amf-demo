class Category < ActiveRecord::Base

  before_save        :set_child_foreign_keys
  after_update       :update_children

  register_amf :actionscript  => 'vos.Category',
               :ruby          => 'Category',
               :type          => 'active_record',
               :methods       => ["children"],
               :attributes    => ["id", "name", "post_id"]

  acts_as_nested_set :dependent => :destroy,
                    :scope     => :post_id

  # Before saving any child categories, this sets their foreign key to the parents foreign key
  def set_child_foreign_keys
    self.children.each do |child|
      child.post_id = self.post_id
    end
  end

  # Makes sure all changes to child properties are saved.
  # It also moves children to the parent if it is not currently a child of the parent.
  def update_children
    self.children.each do |child|
        child.update_children
        unless child.new_record?
          child.save
          child.move_to_child_of(self) if child.parent_id != self.id
        end
    end if self.changed?
  end

end
