path = ARGV[0]

puts "Processing: #{path}"

Dir[path].each do |fname|
    # do something with fname
    puts "{% img pull left /#{fname} 320 240 %}"
end