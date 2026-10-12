class Portwatch < Formula
  desc "Local TUI dashboard for listening services"
  homepage "https://github.com/Kaiyou-Digital/portwatch"
  url "https://github.com/Kaiyou-Digital/portwatch/releases/download/v0.2.0/portwatch-0.2.0-arm64.tar.gz"
  sha256 "6e8786abdaaa6241907b5c01ac764f19a19792cfcf4e8fc4489a5122c7f4f237"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :ventura

  def install
    bin.install "portwatch"
  end

  def caveats
    <<~EOS
      portwatch is a personal, single-machine tool. It has no
      authentication and can send SIGTERM to any of your local
      processes by design — see the README before use.

      Apple silicon, macOS 13 or later only: it reads listening sockets
      through libproc, which is macOS-specific.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/portwatch --version")
  end
end
