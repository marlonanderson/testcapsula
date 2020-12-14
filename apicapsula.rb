require 'rubygems'
require 'httparty'

class Testapicapsula
  include HTTParty
  base_uri "https://capsuladotempo.com/"

  def parses
    self.class.get('/parses.json')
  end
end

testapicapsula_resty = Testapicapsula.new
puts testapicapsula_resty.parses
