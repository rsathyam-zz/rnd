# iTunes feed for Engineers Onstage Podcast
xml.instruct! :xml, :version => "1.0" 

xml.rss 'xmlns:itunes' => "http://www.itunes.com/dtds/podcast-1.0.dtd", :version => "2.0" do
  xml.channel do
    xml.title       'Engineers Onstage'
    xml.link        'http://rnd.io/engineers_onstage/'
    xml.language    'en-us'
    xml.copyright   '&copy; 2012 Prefiat LLC'
    xml.itunes      :subtitle, "An insider's view into the educations, careers, and lives of the world's most influential scientists and engineers, brought to you by rnd.io"
    xml.itunes      :author, "Ravi Sathyam and David Albrecht"
    xml.itunes      :summary, "Biweekly interviews with today's leading minds in science and technology"
    xml.description "Have you ever wondered what it's like to work at Facebook, Apple, Google, or Microsoft? Maybe you work in a creative field, but wonder how software gets made? Every two weeks, Ravi and David interview a world-class expert on their work and their passions. In the past, we've discussed the difficulty of synchronizing clocks in train stations, strategies for squeezing every drop of power from a mobile handset's battery, and a four-year rags-to-riches journey spanning two failed startups and a move across the country."

    xml.itunes :owner do
      xml.itunes :name,   "David Albrecht"
      xml.itunes :email,  "david@prefiat.com"
    end

    xml.itunes :image, :href => 'http://rnd.io/image.png'   # TODO
    xml.itunes :category, :text => "Science &amp; Medicine" do
      xml.itunes :category, :text => "Natural Sciences"
    end
    xml.itunes :category, "Technology"
    xml.itunes :category, :text => "Business" do
      xml.itunes :category, :text => "Careers"
    end
    xml.itunes :category, :text => "Education" do
      xml.itunes :category, "Higher Education"
    end

    @features.each do |feature|
      xml.item do
        xml.title feature.title
        xml.itunes :author, "Ravi Sathyam and David Albrecht, with rnd.io"
        xml.itunes :subtitle, "Engineers Onstage, an rnd.io production"
        xml.itunes :summary, feature.overview
        xml.itunes :image, :href => feature.leader_picture
        xml.enclosure :url => feature.podcast, :length =>
          0, :type => feature.podcast_content_type
        xml.guid feature.podcast
        xml.pubDate feature.content_date.strftime("%a, %d %b %Y %H:%M:%S %Z")
        # Prints seconds with leading zeroes and colon separator
        #xml.duration "#{feature.audio_seconds/60.floor}:#{"%02d" % (feature.audio_seconds % 60)}"
        xml.itunes :keywords, feature.feature_keywords
      end
    end
  end
end

