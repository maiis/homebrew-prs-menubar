cask "prs-menubar" do
  version "1.12"
  sha256 "e571b547e1c2926ef89dae1fd3162ca838da7f8897c7cfb9474e002efaad2ee9"

  url "https://github.com/maiis/prs-menubar/releases/download/v#{version}/PRsMenuBar-#{version}.dmg"
  name "PRs MenuBar"
  desc "Menu bar app for viewing pull requests awaiting review"
  homepage "https://github.com/maiis/prs-menubar"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"

  app "PRs MenuBar.app"

  zap trash: [
    "~/Library/Application Support/PRs MenuBar",
    "~/Library/Preferences/me.maiis.prsmenubar.plist",
    "~/Library/HTTPStorages/me.maiis.prsmenubar",
    "~/Library/Caches/me.maiis.prsmenubar",
  ]
end
