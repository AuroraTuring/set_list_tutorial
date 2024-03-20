require "rails_helper"

RSpec.describe "Songs Index Page", type: :feature do
# As a User,
# When I visit '/songs'
# I see each song's title and play count


describe "User Story One" do
  describe "As a User" do
    describe "When I visit '/song'" do
      it "Then I see each song's title and play count" do
        # Arrange - set up
        purple = Song.create!(title: 'Purple Rain', length: 845, play_count: 8599)
        beret = Song.create!(title: 'Raspberry Beret', length: 665, play_count: 99)
        doves = Song.create!(title: 'When Doves Cry', length: 240, play_count: 2024)

        # Act - perform the actions
        visit "/songs"

        # Assert - verify behavior
        # CSS
          # - ID => #
          # - Class => .
          within "#song_#{purple.id}" do
            expect(page).to have_content('Title: Purple Rain')
            expect(page).to have_content("Play Count: #{purple.play_count}")
          end

          within "#song_#{beret.id}" do
            expect(page).to have_content('Title: Raspberry Beret')
            expect(page).to have_content(99)
          end

          within "#song_#{doves.id}" do
            expect(page).to have_content('Title: When Doves Cry')
            expect(page).to have_content(2024)
            save_and_open_page
          end
        end
      end
    end
  end

end
