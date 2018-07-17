#!/usr/bin/env ruby -w

DAY = 86400

puts "How many days ago? [0]"
day_arg = gets
days_ago = day_arg ? day_arg.to_i : 0
day = Time.now - (days_ago * DAY)
date_str = day.strftime("%Y-%m-%d")
puts "Date: #{date_str}"

puts "What's the title?"
title = gets.strip

slug = title.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')

post = <<END
---
layout: post
title:  "#{title}"
date:   #{date_str} 
categories: eflight
---

Today was a great day!

![](/eflight/img/#{date_str}/1.jpg)
END

post_name = "#{date_str}-#{slug}.md"
post_filename = "_posts/#{post_name}"
puts "Creating post: #{File::absolute_path(post_filename)}"
File.open(post_filename, "w") do |f|
  f.write(post)
end

img_filename = "img/#{date_str}"
puts "Creating img dir: #{File::absolute_path(img_filename)}"
Dir::mkdir(img_filename)







