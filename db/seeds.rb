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
 100.times do
   Comment.create!(
     post: posts.sample,
     body: RandomData.random_paragraph
   )
 end
 
 puts "#{Post.count}"
 Post.find_or_create_by(title: "Unique title", body: "Unique body")
 puts "#{Post.count}"
  
 puts "#{Comment.count}"
 Comment.find_or_create_by(body: "Unique body")
 puts "#{Comment.count}" 
  
  
  # Create Questions
 50.times do
 # #1
   Question.create!(
 # #2
     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph
   )
 end
 questions = Question.all 
  
 puts "Seed finished"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"
 puts "#{Question.count} questions created"
 
 