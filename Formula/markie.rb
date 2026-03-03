class Markie < Formula
  desc "Lightweight terminal-launched Markdown viewer for macOS"
  homepage "https://github.com/muchbetteradventures/markie"
  license "MIT"

  # Update these on each release
  version "0.0.2"
  url "https://github.com/muchbetteradventures/markie/releases/download/v#{version}/markie-#{version}.tar.gz"
  sha256 "e83d812113ec67e5c16d35bf0de0503996cd65d42a8c1e88657d6d58f0ba765e"

  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "markie"
  end

  test do
    assert_match "markie", shell_output("#{bin}/markie --help 2>&1", 0)
  end
end
