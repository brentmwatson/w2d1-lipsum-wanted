

require 'erb'

# Name variables
# ipsum wanted and convert to string and downcase to pass variable
lipsum = ARGV[0].to_s.downcase
# Number of paragraphes wanted converted to intiger
#1 for default output
num_para=ARGV[1].to_i

# display inspect variable
puts ARGV.inspect
puts lipsum.inspect
# Validation and option valid/chosen

# Library of data to pull
case lipsum
  when "classic_ipsum"
      output=
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur erat ipsum, pretium molestie elit vel, porttitor eleifend eros. Ut non dolor vitae libero finibus convallis ut quis felis. Cras leo velit, posuere in fermentum id, ornare auctor ex. Integer rhoncus imperdiet ex id porttitor. Donec vestibulum vehicula sodales. Curabitur viverra, elit pulvinar facilisis ornare, nibh felis lacinia sem, viverra euismod nisl felis quis odio. Nulla facilisi. Aenean mollis ex leo, a sagittis nunc aliquet nec. Aliquam sodales euismod enim, congue lobortis elit efficitur eu."
    when "samuel_ipsum"
      output=
        "Do you see any Teletubbies in here? Do you see a slender plastic tag clipped to my shirt with my name printed on it? Do you see a little Asian child with a blank expression on his face sitting outside on a mechanical helicopter that shakes when you put quarters in it? No? Well, that's what you see at a toy store. And you must think you're in a toy store, because you're here shopping for an infant named Jeb."
    when "hipster_ipsum"
        output=
        "Tilde pug tousled raw denim blog keytar, actually microdosing flannel thundercats retro humblebrag. Beard truffaut celiac readymade whatever skateboard. Hella cliche mlkshk keffiyeh, skateboard forage hexagon dreamcatcher pug migas gentrify swag cred. Pok pok microdosing yuccie edison bulb humblebrag cred. Cray butcher bitters bicycle rights, tofu YOLO subway tile disrupt helvetica pork belly. Portland prism crucifix kitsch meh, activated charcoal schlitz irony trust fund authentic mlkshk cold-pressed fanny pack. Woke live-edge kogi intelligentsia, meditation flannel pitchfork snackwave post-ironic godard salvia pabst keytar artisan."
    else
      puts "Were you trying to find a Lorum Ipsum? Try lipsum.rb classic_ipsum or samuel_ipsum or hipster_ipsum."
end

if output
# ********save to a file and close it*********
# create new file and title file
new_file = File.open("./#{lipsum}.html", "w+")

# push new file, read html file
new_file << ERB.new(File.read("index.html.erb")).result(binding)

# close file
new_file.close
end
