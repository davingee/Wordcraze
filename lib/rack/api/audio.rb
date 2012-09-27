module Rack
 module Api
   class Audio
     def initialize(app)
       @app = app
     end

     def call(env)
       # Dump the environment coming in with the request for inspection
       puts env.inspect
       # Do something to the environment or pull something out of it and write it to the file system

       # Call the Rails app
       @app.call(env)
     end
   end
 end
end