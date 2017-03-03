task :hello do
  puts 'Hello world!'
end

task :chain => :hello do
    puts 'Chain task....'
end