require "helix_runtime"

begin
  require "lori/native"
rescue LoadError
  warn "Unable to load lori/native. Please run `rake build`"
end
