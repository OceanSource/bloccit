 module PostsHelper
   def can_edit?(post)
     current_user && (current_user == post.user || current_user.moderator? || current_user.admin?)
   end
   
   def can_delete?(post)
     current_user && (current_user == post.user || current_user.admin?)
   end
 end
