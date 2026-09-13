# NOTE: version/sha256 still point at the final muchbetteradventures/marka
# release. build-release.sh updates them on the first Kaiyou-Digital/remarka
# release; until then `brew install remarka` will not resolve.
cask "remarka" do
  version "0.2.1"
  sha256 "d77f981d274a79b877db8877459d4ca2e02f91f31868f46077c426c03290a85c"

  url "https://releases.kaiyou.digital/remarka-#{version}.dmg"
  name "Remarka"
  desc "Lightweight terminal-launched Markdown viewer for macOS"
  homepage "https://github.com/Kaiyou-Digital/remarka"

  depends_on macos: :sonoma

  app "Remarka.app"
  binary "#{appdir}/Remarka.app/Contents/MacOS/Remarka", target: "remarka"

  # NOTE: `postflight` is deprecated in favor of `postflight_steps`, but its
  # `run` step doesn't resolve `appdir` (or any base) inside `args:` — only
  # the command path itself, stdin/stdout/chdir, and writable_paths get
  # path-base substitution. There's no way to express "run pluginkit with
  # the installed app's plugin path as an argument" without it. Third-party
  # taps keep (temporary) compatibility with this legacy block; switching to
  # postflight_steps here would raise `undefined local variable or method
  # 'appdir'` and silently fail to register the QuickLook extension.
  postflight do
    system_command "/usr/bin/pluginkit",
      args: ["-a", "#{appdir}/Remarka.app/Contents/PlugIns/MarkdownPreview.appex"],
      sudo: false
  end
end
