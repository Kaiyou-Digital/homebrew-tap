cask "shelve" do
  version "0.1.3"
  sha256 "8e941a9ccc1c3791e7f97cdcca7ce39c5bc3720e7bf97dec0b6bee740d58daa5"

  url "https://github.com/muchbetteradventures/shelve/releases/download/v#{version}/shelve-#{version}.dmg"
  name "Shelve"
  desc "Safari extension that saves pages to a configurable local API"
  homepage "https://github.com/muchbetteradventures/shelve"

  depends_on macos: ">= :sonoma"

  app "Shelve.app"
end
