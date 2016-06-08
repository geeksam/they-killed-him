class Reaction
  def self.at_random(title = nil)
    title ||= tags.sample
    response = RestClient.get( "http://replygif.net/api/gifs", params: { "tag" => title, "api-key" => "39YAprx5Yi" } )
    data = JSON.parse(response)
    data.first["file"]
  end

  def self.tags
    @tags ||= begin
      response = RestClient.get( "http://replygif.net/api/tags?api-key=39YAprx5Yi" )
      tags = JSON.parse(response)
      tags.map { |t| t['title'] }
    end
  end
end
