require_relative "lib/redundancy/version"

Gem::Specification.new do |spec|
  spec.name        = "redundancy"
  spec.version     = Redundancy::VERSION
  spec.author      = "Byron Stuike"
  spec.email       = "bstuike@duck.com"

  spec.summary     = "Delete duplicate commands from zsh, bash, and irb history."
  spec.description = "Redundancy is a Ruby program that loads the .zsh_history, .bash_history, .irb_history files, and applies the built-in Ruby uniq! function to trim any duplicate commands present. It then writes the filtered output back to the appropriate file. The source code works better as an Apple Shortcut, as there is a significant delay running redundancy when Terminal is open (several closings and reopenings)."
  spec.homepage    = "https://github.com/farghul/redundancy"
  spec.required_ruby_version = ">= 3.0.5"
  spec.required_rubygems_version = ">= 3.4.0"

  spec.files         = ["lib/redundancy.rb"]
  spec.license       = "Unlicense"
  spec.executables   = ["redundancy"]

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  end