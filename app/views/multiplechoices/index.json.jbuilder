json.array!(@multiplechoices) do |multiplechoice|
  json.extract! multiplechoice, :id, :choice1, :choice2, :choice3, :choice4
  json.url multiplechoice_url(multiplechoice, format: :json)
end
