class AccessDenied < StandardError
 def initialize(message = "You should not be doing that")
   super
 end
end
