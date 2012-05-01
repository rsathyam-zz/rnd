atom_feed do |feed|   
  feed.title("Engineers Onstage")
  feed.updated(@features.first.created_at)
  @features.each do |feature|
    feed.entry(feature) do |entry|
      entry.title(feature.title)
      entry.content(feature.body, :type => 'html')
#      entry.author { |author| author.name("Justin Zollars")}
    end
  end
end

