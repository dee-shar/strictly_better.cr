require "json"
require "http/client"

class StrictlyBetter
  API_PATH = "api"
  def initialize
    @headers = HTTP::Headers{
      "Content-Type" => "application/json",
      "User-Agent" => "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36"
    }
    uri = URI.parse("https://www.strictlybetter.eu")
    @http_client = HTTP::Client.new(uri)
  end

  def get_obsoletes() : JSON::Any
    JSON.parse(
      @http_client.get("/#{API_PATH}/obsoletes", headers: @headers).body)
  end

  def search_obsolete(query : String) : JSON::Any
    JSON.parse(
      @http_client.get("/#{API_PATH}/obsoletes/#{query}", headers: @headers).body)
  end

  def get_functional_reprints() : JSON::Any
    JSON.parse(
      @http_client.get("/#{API_PATH}/functional_reprints", headers: @headers).body)
  end
end
