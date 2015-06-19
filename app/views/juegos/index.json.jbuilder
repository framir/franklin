json.array!(@juegos) do |juego|
  json.extract! juego, :id, :nombre, :rating
  json.url juego_url(juego, format: :json)
end
