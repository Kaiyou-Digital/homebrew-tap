cask "shelve" do
  version "0.1.0"
  sha256 "ff616f05dc9d169c8afdfe2f9562db3d2a1318539e57b2ae0b51489ff78aabbc"

  url "https://github.com/muchbetteradventures/shelve/releases/download/v#{version}/shelve-#{version}.dmg"
  name "Shelve"
  desc "Safari extension that saves pages to a configurable local API"
  homepage "https://github.com/muchbetteradventures/shelve"

  depends_on macos: ">= :sonoma"

  app "Shelve.app"
end
