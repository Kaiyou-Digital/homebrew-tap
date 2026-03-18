cask "shelve" do
  version "0.2.0"
  sha256 "a07ee4212b237d8a177c1530ea9099cf397d766be86737405eda3fea9b920da4"

  url "https://github.com/muchbetteradventures/shelve/releases/download/v#{version}/shelve-#{version}.dmg"
  name "Shelve"
  desc "Safari extension that saves pages to a configurable local API"
  homepage "https://github.com/muchbetteradventures/shelve"

  depends_on macos: ">= :sonoma"

  app "Shelve.app"
end
