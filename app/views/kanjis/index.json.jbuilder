json.array!(@kanjis) do |kanji|
  json.extract! kanji, :id, :kanji, :kakusu, :yomi
  json.url kanji_url(kanji, format: :json)
end
