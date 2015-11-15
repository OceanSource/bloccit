 include RandomData
 
 # Create Topics
 15.times do
   Topic.create!(
     name:         RandomData.random_sentence,
     description:  RandomData.random_paragraph
   )
 end
 topics = Topic.all
 

 # Create Posts
 50.times do
   Post.create!(
     topic:  topics.sample,
     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph
   )
 end
 posts = Post.all
 
 # Create Comments
 100.times do
   Comment.create!(
     post: posts.sample,
     body: RandomData.random_paragraph
   )
 end
 
   # Create SponsoredPosts
 50.times do
   SponsoredPost.create!(
     topic:  topics.sample,
     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph
   )
 end
 sponsored_posts = SponsoredPost.all
 

 
 puts "#{Post.count}"
 Post.find_or_create_by(title: "Unique title", body: "Unique body")
 puts "#{Post.count}"
 
  puts "#{SponsoredPost.count}"
 SponsoredPost.find_or_create_by(title: "Unique title", body: "Unique body")
 puts "#{SponsoredPost.count}"
  
 puts "#{Comment.count}"
 Comment.find_or_create_by(body: "Unique body")
 puts "#{Comment.count}" 
  
  
 puts "Seed finished"
 puts "#{Topic.count} topics created"
 puts "#{Post.count} posts created"
 puts "#{SponsoredPost.count} sponsored posts created"
 puts "#{Comment.count} comments created"