cask "remarka" do
  version "0.3.0"
  sha256 "27c4f3a0f00be03d991f3ec7fb77fd9847c0836f8a6fe7553ac73bb8197735b7"

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
