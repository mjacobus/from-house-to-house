module Query
  class Base
    def with_params(params = {})
      params.each do |name, value|
        method = "with_#{name}"
        if respond_to?(method)
          send(method, value)
        end
      end
    end
  end
end