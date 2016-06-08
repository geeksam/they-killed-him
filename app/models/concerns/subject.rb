class Subject
  def self.at_random
    response = RestClient.get( "http://thecatapi.com/api/images/get?format=xml&type=gif" )
    response =~ /<url>(.*?)<\/url>/
    $1
  end
end
