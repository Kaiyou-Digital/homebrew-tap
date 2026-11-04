class Portwatch < Formula
  desc "Local TUI dashboard for listening services"
  homepage "https://github.com/Kaiyou-Digital/portwatch"
  url "https://github.com/Kaiyou-Digital/portwatch/releases/download/v0.3.0/portwatch-0.3.0-arm64.tar.gz"
  sha256 "3f63312dc4e3e4c2527adc1cbfc55882fe5bdc3f5d2f9a65e348c5c9dfc43016"
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
