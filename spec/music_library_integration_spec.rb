require 'music_library'
require 'track'

RSpec.describe "integration" do
  context "when a track is added" do
    it "returns a list of tracks from #all" do
        my_lib = MusicLibrary.new
        my_track = Track.new("title", "artist")     
        my_lib.add(my_track)
        expect(my_lib.all).to eq [my_track]
    end
  end

  context "when #search is called using a keyword" do
    it "returns a list of tracks that match the keyword" do
      my_lib = MusicLibrary.new
      track1 = Track.new("hello", "artist")
      track2 = Track.new("title", "artist")
      track3 = Track.new("title", "hello")
      track4 = Track.new("title", "artist")
      my_lib.add(track1)
      my_lib.add(track2)
      my_lib.add(track3)
      my_lib.add(track4)
      expect( my_lib.search("hello") ).to eq [track1, track3]
    end
  end
end