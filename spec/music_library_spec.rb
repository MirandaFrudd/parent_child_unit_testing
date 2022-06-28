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
        xit "returns a list of tracks that match the keyword" do
            my_lib = MusicLibrary.new
        end
    end
end