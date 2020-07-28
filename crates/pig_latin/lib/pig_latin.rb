require "helix_runtime"

begin
  require "pig_latin/native"
rescue LoadError
  warn "Unable to load pig_latin/native. Please run `rake build`"
end
