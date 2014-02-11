json.array!(@ducks) do |duck|
  json.extract! duck, :id, :name, :color, :sound, :backback
  json.url duck_url(duck, format: :json)
end
