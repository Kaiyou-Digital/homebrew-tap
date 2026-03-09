cask "marka" do
  version "0.5.0"
  sha256 "48cd66f00ffe4712759aaba8ec8d9046a456f5e2845081edb3a7bb9b8d995b48"

  url "https://github.com/muchbetteradventures/marka/releases/download/v#{version}/marka-#{version}.dmg"
  name "Marka"
  desc "Lightweight terminal-launched Markdown viewer for macOS"
  homepage "https://github.com/muchbetteradventures/marka"

  depends_on macos: ">= :sonoma"

  app "Marka.app"
  binary "#{appdir}/Marka.app/Contents/MacOS/Marka", target: "marka"
end
