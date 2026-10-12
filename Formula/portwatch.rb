class Portwatch < Formula
  desc "Local TUI dashboard for listening services, built with Ink"
  homepage "https://github.com/Kaiyou-Digital/portwatch"
  url "https://github.com/Kaiyou-Digital/portwatch/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "a2d9636f977bc12a116b65bf979b0bad70104781b962b8d32a4a76525385d10f"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  def caveats
    <<~EOS
      portwatch is a personal, single-machine tool. It has no
      authentication and can send SIGTERM to any of your local
      processes by design — see the README before use.

      macOS only: it parses `lsof -F` and `ps -o comm=` output shapes
      as-is, not abstracted for other platforms.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/portwatch --version")
  end
end
