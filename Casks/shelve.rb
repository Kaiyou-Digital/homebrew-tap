cask "shelve" do
  version "0.1.2"
  sha256 "b4eabdbc0d38ec15762b5b05cccc6c85bf0ac2cc1fc3152f140d9baf451d5ac5"

  url "https://github.com/muchbetteradventures/shelve/releases/download/v#{version}/shelve-#{version}.dmg"
  name "Shelve"
  desc "Safari extension that saves pages to a configurable local API"
  homepage "https://github.com/muchbetteradventures/shelve"

  depends_on macos: ">= :sonoma"

  app "Shelve.app"
end
