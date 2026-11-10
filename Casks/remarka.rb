cask "remarka" do
  version "0.4.1"
  sha256 "0eb16a6d4cc5b2d2d30ed2c2e9f61231235fd57e5496b7b5bf58e0c9381cf9f5"

  url "https://releases.kaiyou.digital/remarka-#{version}.dmg"
  name "Remarka"
  desc "Lightweight terminal-launched Markdown viewer for macOS"
  homepage "https://github.com/Kaiyou-Digital/remarka"

  depends_on macos: :sonoma

  app "Remarka.app"
  binary "#{appdir}/Remarka.app/Contents/MacOS/Remarka", target: "remarka"
  # The app registers its own Quick Look extension the first time it runs (0.3.3 and later), so no postflight step is needed.
end
