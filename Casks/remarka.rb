cask "remarka" do
  version "0.3.3"
  sha256 "74eb3515d4e62d433437fd94c4625a474eb59bf40e53bdb0604b4a26c5f675b2"

  url "https://releases.kaiyou.digital/remarka-#{version}.dmg"
  name "Remarka"
  desc "Lightweight terminal-launched Markdown viewer for macOS"
  homepage "https://github.com/Kaiyou-Digital/remarka"

  depends_on macos: :sonoma

  app "Remarka.app"
  binary "#{appdir}/Remarka.app/Contents/MacOS/Remarka", target: "remarka"
  # The app registers its own Quick Look extension the first time it runs (0.3.3 and later), so no postflight step is needed.
end
