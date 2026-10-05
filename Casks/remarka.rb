cask "remarka" do
  version "0.2.4"
  sha256 "d5a0cf4550c6ac0d10f9fa1d3c34d96d61546c29e98e289dbd2b03573c60307a"

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
