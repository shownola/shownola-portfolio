# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

3.times do |topic|
  Topic.create!(title: "Topic #{topic}")
end

puts '3 topics created'

10.times do |blog|
  Blog.create!(
    title: "Blog Post #{blog}",
    body: 'Leverage agile frameworks to provide a robust synopsis for high level overviews. Iterative approaches to corporate strategy foster collaborative thinking to further the overall value proposition. Organically grow the holistic world view of disruptive innovation via workplace diversity and empowerment.

    Bring to the table win-win survival strategies to ensure proactive domination. At the end of the day, going forward, a new normal that has evolved from generation X is on the runway heading towards a streamlined cloud solution. User generated content in real-time will have multiple touchpoints for offshoring.

    Capitalize on low hanging fruit to identify a ballpark value added activity to beta test. Override the digital divide with additional clickthroughs from DevOps. Nanotechnology immersion along the information highway will close the loop on focusing solely on the bottom line.',
    topic_id: Topic.last.id
  )
end

puts '10 blog posts created'

5.times do |skill|
  Skill.create!(
    title: "Ruby #{skill}",
    percent_used: 15
    )
end
puts "5 skills created"

4.times do |technology|
  Technology.create!(
    name: "Technology #{technology}",
    portfolio_id: Portfolio.last.id
  )
end

8.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio Title: #{portfolio_item}",
    subtitle: 'Ruby on Rails',
    body: "Leverage agile frameworks to provide a robust synopsis for high level overviews. Iterative approaches to corporate strategy foster collaborative thinking to further the overall value proposition. Organically grow the holistic world view of disruptive innovation via workplace diversity and empowerment.",
    main_image: 'https://dummyimage.com/600x400/000/fff&text=Company+Name',
    thumb_image: 'https://dummyimage.com/348x225/000/fff&text=Company+Name',
  )
end
puts '8 portfolio items created'

1.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio Title: #{portfolio_item}",
    subtitle: 'Python',
    body: "Leverage agile frameworks to provide a robust synopsis for high level overviews. Iterative approaches to corporate strategy foster collaborative thinking to further the overall value proposition. Organically grow the holistic world view of disruptive innovation via workplace diversity and empowerment.",
    main_image: 'https://dummyimage.com/600x400/000/fff&text=Company+Name',
    thumb_image: 'https://dummyimage.com/400x200/000/fff&text=Company+Name',
  )
end
puts '1 portfolio items created'

# 3.times do |technology|
#   Technology.create!(
#     name: "Technology #{technology}",
#     portfolio_id: Portfolio.last.id
#   )
# end

# 3.times do |technology|
#   Portfolio.last.technologies.create!(
#     name: "Technology #{technology}"
#   )
# end
puts '3 technologies created'
