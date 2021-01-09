class Application

    def call(env)
        resp = Rack::Response.new
        now = Time.now
        
        before_noon = now.hour < 12
        after_noon =  now.hour >= 12
        
        if before_noon 
            resp.write "Good Morning"
        else
            resp.write "Good Afternoon"
        end

        resp.finish
    end



end