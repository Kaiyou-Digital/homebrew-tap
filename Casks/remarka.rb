cask "remarka" do
  version "0.4.2"
  sha256 "7b007d15178def26987353de67cc4547045c9860cb7b2f148d0eb16896b5001c"

  url "https://releases.kaiyou.digital/remarka-#{version}.dmg"
  name "Remarka"
  desc "Lightweight terminal-launched Markdown viewer for macOS"
  homepage "https://github.com/Kaiyou-Digital/remarka"

  depends_on macos: :sonoma

  app "Remarka.app"
  binary "#{appdir}/Remarka.app/Contents/MacOS/Remarka", target: "remarka"
  # The app registers its own Quick Look extension the first time it runs (0.3.3 and later), so no postflight step is needed.
end
