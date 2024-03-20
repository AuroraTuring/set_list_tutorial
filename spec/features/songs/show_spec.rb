require "rails_helper"

RSpec.describe "Songs Show Page", type: :feature do
  # As a user
  # When I visit a Song show page
  # Then I see the song's title, length, and play count


describe "User Story Two" do
  describe "As a User" do
    describe "When I visit '/songs/:id'" do
      it "Then I see the song's title, length, and play count" do
        # Arrange - set up
        purple = Song.create!(title: 'Purple Rain', length: 845, play_count: 8599)

        # Act - perform the actions
        visit "/songs/#{purple.id}"

        # Assert - verify behavior


        end
      end
    end
  end

end
