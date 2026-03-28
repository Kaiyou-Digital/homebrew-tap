cask "marka" do
  version "0.8.0"
  sha256 "570e275ebf32d05861fc05858ac9519de6586da54eabb83689774be0b0400417"

  url "https://github.com/muchbetteradventures/marka/releases/download/v#{version}/marka-#{version}.dmg"
  name "Marka"
  desc "Lightweight terminal-launched Markdown viewer for macOS"
  homepage "https://github.com/muchbetteradventures/marka"

  depends_on macos: ">= :sonoma"

  app "Marka.app"
  binary "#{appdir}/Marka.app/Contents/MacOS/Marka", target: "marka"
end
