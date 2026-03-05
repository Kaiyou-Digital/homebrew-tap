class Marka < Formula
  desc "Lightweight terminal-launched Markdown viewer for macOS"
  homepage "https://github.com/muchbetteradventures/marka"
  license "MIT"

  # Update these on each release
  version "0.1.1"
  url "https://github.com/muchbetteradventures/marka/releases/download/v#{version}/marka-#{version}.tar.gz"
  sha256 "abb6b4d934508b32b61e8560e46a77328d9c4eb4844ccbf047f3950cf2e08882"

  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "marka"
  end

  test do
    assert_match "marka", shell_output("#{bin}/marka --help 2>&1", 0)
  end
end
