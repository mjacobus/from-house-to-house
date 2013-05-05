# inspired by http://blog.leshill.org/blog/2011/10/23/fast-specs.html

ENV["RAILS_ENV"] ||= 'test'
ENV["SKIP_RAILS"] ||= 'no'

def if_fast_spec
  if block_given? && ENV["SKIP_RAILS"] != 'no'
    yield
  end
end

if ENV["SKIP_RAILS"] == 'no'
  require 'rails_spec_helper'
else
  require 'fast_spec_helper'
end  

