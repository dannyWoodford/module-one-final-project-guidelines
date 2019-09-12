require 'pry'

require 'rest-client'
chr_test = RestClient.get("https://the-one-api.herokuapp.com/v1/character", headers={Authorization: "Bearer WkJGCxRx600w2aPGK5py"})
json = JSON.parse(chr_test)
# binding.pry