class Marka < Formula
  desc "Lightweight terminal-launched Markdown viewer for macOS"
  homepage "https://github.com/muchbetteradventures/marka"
  license "MIT"

  # Update these on each release
  version "0.1.0"
  url "https://github.com/muchbetteradventures/marka/releases/download/v#{version}/marka-#{version}.tar.gz"
  sha256 "3c8431dd322ff4aa90217405c92acb82ec1c2da7372d6eaf69374f8e9071a99d"

  depends_on :macos
  depends_on macos: :sonoma

  def install
    bin.install "marka"
  end

  test do
    assert_match "marka", shell_output("#{bin}/marka --help 2>&1", 0)
  end
end
