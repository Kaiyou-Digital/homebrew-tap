cask "shelve" do
  version "0.1.1"
  sha256 "401dae52a53ad443ccf3bbfbc95ef6ffa8d4fbcc37f914d738481a5f38fda03f"

  url "https://github.com/muchbetteradventures/shelve/releases/download/v#{version}/shelve-#{version}.dmg"
  name "Shelve"
  desc "Safari extension that saves pages to a configurable local API"
  homepage "https://github.com/muchbetteradventures/shelve"

  depends_on macos: ">= :sonoma"

  app "Shelve.app"
end
