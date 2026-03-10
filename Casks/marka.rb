cask "marka" do
  version "0.6.1"
  sha256 "2b07ab97aa65abbbcdb31535d0e4db5a104a9758da1ce0cbd6e623a200f43992"

  url "https://github.com/muchbetteradventures/marka/releases/download/v#{version}/marka-#{version}.dmg"
  name "Marka"
  desc "Lightweight terminal-launched Markdown viewer for macOS"
  homepage "https://github.com/muchbetteradventures/marka"

  depends_on macos: ">= :sonoma"

  app "Marka.app"
  binary "#{appdir}/Marka.app/Contents/MacOS/Marka", target: "marka"
end
