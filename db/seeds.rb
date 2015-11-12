 include RandomData
 
 # Create Posts
 50.times do
 # #1
   Post.create!(
 # #2
     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph
   )
 end
 posts = Post.all
 
 # Create Comments
 # #3
 100.times do
   Comment.create!(
 # #4
     post: posts.sample,
     body: RandomData.random_paragraph
   )
 end
 
 puts "#{Post.count}"
 p = Post.find_or_create_by(title: "Unique title", body: "Unique body")
 puts "#{Post.count}"
  
 puts "#{Comment.count}"
 Comment.find_or_create_by(body: "Unique body", post: p)
 puts "#{Comment.count}" 
  
  
 puts "Seed finished"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"