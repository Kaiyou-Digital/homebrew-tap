cask "marka" do
  version "0.10.0"
  sha256 "a606148929aac5cb8381c9d00f0ced19b630a80022c200bc778206eceb5d33a0"

  url "https://github.com/muchbetteradventures/marka/releases/download/v#{version}/marka-#{version}.dmg"
  name "Marka"
  desc "Lightweight terminal-launched Markdown viewer for macOS"
  homepage "https://github.com/muchbetteradventures/marka"

  depends_on macos: ">= :sonoma"

  app "Marka.app"
  binary "#{appdir}/Marka.app/Contents/MacOS/Marka", target: "marka"

  postflight do
    system_command "/usr/bin/pluginkit",
      args: ["-a", "#{appdir}/Marka.app/Contents/PlugIns/MarkdownPreview.appex"],
      sudo: false
  end
end
