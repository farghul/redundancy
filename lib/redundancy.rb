#!/usr/bin/env ruby
$stdin.flush
$stdout.flush
$stdout.sync = true

arr = ["/.bash_history", "/.irb_history", "/.zsh_history"]

for i in arr do
    l = Dir.home + i
    e = File.readlines(l)
    e.uniq!
    f = File.open(l, "w")

    e.each do |line|
        f.puts(line)
    end
    f.close   
end
