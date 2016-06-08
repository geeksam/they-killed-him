class Reaction
  def self.at_random
    response = RestClient.get( "http://replygif.net/api/tags?api-key=39YAprx5Yi" )
    tags = JSON.parse(response)
    title = tags.map {|t| t["title"] }.shuffle.first
    response = RestClient.get( "http://replygif.net/api/gifs", params: { "tag" => title, "api-key" => "39YAprx5Yi" } )
    data = JSON.parse(response)
    data.first["file"].inspect
  end
end
