class Markie < Formula
  desc "Lightweight terminal-launched Markdown viewer for macOS"
  homepage "https://github.com/muchbetteradventures/markie"
  license "MIT"

  # Update these on each release
  version "0.0.1"
  url "https://github.com/muchbetteradventures/markie/releases/download/v#{version}/markie-#{version}.tar.gz"
  sha256 "PLACEHOLDER_SHA256"

  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "markie"
  end

  test do
    assert_match "markie", shell_output("#{bin}/markie --help 2>&1", 0)
  end
end
