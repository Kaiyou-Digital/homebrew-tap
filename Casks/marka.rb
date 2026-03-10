cask "marka" do
  version "0.6.0"
  sha256 "7ba8f089c9a72f1d2a8060b4a4256ae95428e453c2ddf0de70d4714f02a24b1b"

  url "https://github.com/muchbetteradventures/marka/releases/download/v#{version}/marka-#{version}.dmg"
  name "Marka"
  desc "Lightweight terminal-launched Markdown viewer for macOS"
  homepage "https://github.com/muchbetteradventures/marka"

  depends_on macos: ">= :sonoma"

  app "Marka.app"
  binary "#{appdir}/Marka.app/Contents/MacOS/Marka", target: "marka"
end
