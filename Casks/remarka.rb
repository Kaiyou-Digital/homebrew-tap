# NOTE: version/sha256 still point at the final muchbetteradventures/marka
# release. build-release.sh updates them on the first Kaiyou-Digital/remarka
# release; until then `brew install remarka` will not resolve.
cask "remarka" do
  version "0.10.0"
  sha256 "a606148929aac5cb8381c9d00f0ced19b630a80022c200bc778206eceb5d33a0"

  url "https://github.com/Kaiyou-Digital/remarka/releases/download/v#{version}/remarka-#{version}.dmg"
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
