require 'music_library'

RSpec.describe MusicLibrary do
    context "when a track is added" do
        it "returns a list of tracks from #all" do
            my_lib = MusicLibrary.new
            my_track = double :fake_track      
            my_lib.add(my_track)
            expect(my_lib.all).to eq [my_track]
        end
    end
    context "when #search is called using a keyword" do
        it "returns a list of tracks that match the keyword" do
            my_lib = MusicLibrary.new
            track1 = double :track1, matches?: true
            # allow(track1).to receive(:matches?).with("hello").and_return(true)
            track2 = double :track2, matches?: false
            track3 = double :track3, matches?: true
            track4 = double :track4, matches?: false
            my_lib.add(track1)
            my_lib.add(track2)
            my_lib.add(track3)
            my_lib.add(track4)
            expect( my_lib.search("hello") ).to eq [track1, track3]
        end
        
        it "returns an empty list when there are no matches" do
            my_lib = MusicLibrary.new
            track1 = double :track1, matches?: false
            track2 = double :track2, matches?: false
            my_lib.add(track1)
            my_lib.add(track2)
            expect( my_lib.search("hello") ).to eq []
        end
    end
end