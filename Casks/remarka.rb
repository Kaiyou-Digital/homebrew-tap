cask "remarka" do
  version "0.6.0"
  sha256 "eee21a650b5337114948b8f1ade5a50aa343fa6aae13ee4dafab653b3756308c"

  url "https://releases.kaiyou.digital/remarka-#{version}.dmg"
  name "Remarka"
  desc "Lightweight terminal-launched Markdown viewer for macOS"
  homepage "https://github.com/Kaiyou-Digital/remarka"

  depends_on macos: :sonoma

  app "Remarka.app"
  binary "#{appdir}/Remarka.app/Contents/MacOS/Remarka", target: "remarka"
  # The app registers its own Quick Look extension the first time it runs (0.3.3 and later), so no postflight step is needed.
end
