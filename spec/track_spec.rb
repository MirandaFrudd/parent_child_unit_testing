require 'track'

RSpec.describe Track do
    context "#matches?" do
        it 'returns true if the title or artist contains a keyword' do
            track1 = Track.new('Changes', 'David Bowie')
            expect(track1.matches?('David')).to eq true
        end

        it 'returns false if the title or artist does not contain a keyword' do
            track1 = Track.new('Changes', 'David Bowie')
            expect(track1.matches?('Hello')).to eq false
        end
    end
end