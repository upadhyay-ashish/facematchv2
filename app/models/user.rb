class User < ActiveRecord::Base
   has_attached_file :avatar
   validates :name, :presence => true
   validates :email, :presence => true
   validates :email, :uniqueness => true
   validates_attachment_size :avatar, :less_than => 2.megabytes, :message => "should be less than 2MB"
   validates_attachment_content_type :avatar, :content_type => ["image/gif","image/jpg","image/jpeg","image/png"], :message => 'invalid format'
#   validates :avatar, :format => {:with => %r{\.(gif|jpg|jpeg|png)$}i, :message => 'invalid format' }
   


   def self.selected_users
    User.all.shuffle!.first(4)
   end

   def self.pic_user(users)
     users.shuffle.first
   end

   def self.first_user(user)
    user.first
   end
end
