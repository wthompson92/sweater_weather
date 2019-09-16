class Giphy

  def initialize(summary)
    @summary = summary

  def conn
     @_conn ||= Faraday.new(url: "api.giphy.com/v1/gifs/search") do |faraday|
       faraday.params["api_key"] = ENV["GIPHPY_KEY"]
       faraday.params["q"] = "#{@summary}"
       faraday.adapter Faraday.default_adapter
     end
   end

   def get_json
       response = conn.get
       JSON.parse(response.body, symbolize_names: true)
       binding.pry
   end

end
