cask "marka" do
  version "0.3.0"
  sha256 "c0ea87beb175f0b103d8a495e1fb94bd50ce5e2535a48e3b3bb7bcf4a75ae6eb"

  url "https://github.com/muchbetteradventures/marka/releases/download/v#{version}/marka-#{version}.dmg"
  name "Marka"
  desc "Lightweight terminal-launched Markdown viewer for macOS"
  homepage "https://github.com/muchbetteradventures/marka"

  depends_on macos: ">= :sonoma"

  app "Marka.app"
  binary "#{appdir}/Marka.app/Contents/MacOS/Marka", target: "marka"
end
