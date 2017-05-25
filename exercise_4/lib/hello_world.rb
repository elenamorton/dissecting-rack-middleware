class HelloWorldApp
  def self.call(env)
    request = Rack::Request.new(env)
    message = request.params['message'] || 'nothing!'
    [200, {}, ["Hello, you sent 'message = #{message}', to #{env['PATH_INFO']}, via #{env['REQUEST_METHOD']} request"]]
  end
end
