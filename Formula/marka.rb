class Marka < Formula
  desc "Lightweight terminal-launched Markdown viewer for macOS"
  homepage "https://github.com/muchbetteradventures/marka"
  license "MIT"

  # Update these on each release
  version "0.2.0"
  url "https://github.com/muchbetteradventures/marka/releases/download/v#{version}/marka-#{version}.tar.gz"
  sha256 "86380039bcd8d0ab051693b0d241bd66e0bc8b7baf42fc976eea15c91d215de4"

  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "marka"
  end

  test do
    assert_match "marka", shell_output("#{bin}/marka --help 2>&1", 0)
  end
end
