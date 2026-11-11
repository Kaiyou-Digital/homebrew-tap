cask "remarka" do
  version "0.5.1"
  sha256 "5a6442011557b9806afe4d2716521f0d90bd34aa4a6662394ad160f1d5bf9422"

  url "https://releases.kaiyou.digital/remarka-#{version}.dmg"
  name "Remarka"
  desc "Lightweight terminal-launched Markdown viewer for macOS"
  homepage "https://github.com/Kaiyou-Digital/remarka"

  depends_on macos: :sonoma

  app "Remarka.app"
  binary "#{appdir}/Remarka.app/Contents/MacOS/Remarka", target: "remarka"
  # The app registers its own Quick Look extension the first time it runs (0.3.3 and later), so no postflight step is needed.
end
