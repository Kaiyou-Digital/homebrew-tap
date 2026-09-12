# NOTE: version/sha256 still point at the final muchbetteradventures/marka
# release. build-release.sh updates them on the first Kaiyou-Digital/remarka
# release; until then `brew install remarka` will not resolve.
cask "remarka" do
  version "0.1.0"
  sha256 "9e12b33b3ba8f845e5f909f08018849949ea89f935b3bd7340da8b5e911a8127"

  url "https://releases.kaiyou.digital/remarka-#{version}.dmg"
  name "Remarka"
  desc "Lightweight terminal-launched Markdown viewer for macOS"
  homepage "https://github.com/Kaiyou-Digital/remarka"

  depends_on macos: ">= :sonoma"

  app "Remarka.app"
  binary "#{appdir}/Remarka.app/Contents/MacOS/Remarka", target: "remarka"

  postflight do
    system_command "/usr/bin/pluginkit",
      args: ["-a", "#{appdir}/Remarka.app/Contents/PlugIns/MarkdownPreview.appex"],
      sudo: false
  end
end
