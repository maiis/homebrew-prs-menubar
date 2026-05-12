cask "prs-menubar" do
  version "1.11"
  sha256 "6f5791ddeb0d430ac7535cf0e410de75b643d34d2ee49dc8304b13f2f22fba20"

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
