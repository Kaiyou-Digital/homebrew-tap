class Marka < Formula
  desc "Lightweight terminal-launched Markdown viewer for macOS"
  homepage "https://github.com/muchbetteradventures/marka"
  license "MIT"

  # Update these on each release
  version "0.3.0"
  url "https://github.com/muchbetteradventures/marka/releases/download/v#{version}/marka-#{version}.tar.gz"
  sha256 "36840434fc77bc42d49952ca556d604de8c5738135f616f844ac701d0e49bfe7"

  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "marka"
  end

  test do
    assert_match "marka", shell_output("#{bin}/marka --help 2>&1", 0)
  end
end
