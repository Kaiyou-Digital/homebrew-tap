class SafariSummary < Formula
  desc "Summarize open Safari tabs with a local LLM and export as bookmarks"
  homepage "https://github.com/Kaiyou-Digital/SafariSummarizer"
  url "https://github.com/Kaiyou-Digital/SafariSummarizer/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "c7959a7f45a8d4eb42fb0b766c37298a6c16f04019895897e614707e8b485e65"
  license "MIT"

  depends_on macos: :monterey
  depends_on xcode: :build

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/SafariSummary" => "safari-summary"
  end

  def caveats
    <<~EOS
      safari-summary requires:
        - Safari automation permission granted to your terminal app
          (System Settings -> Privacy & Security -> Automation)
        - A local OpenAI-compatible chat completions server (e.g. LM Studio),
          by default at http://127.0.0.1:1234/v1/chat/completions
          (override with --server-url and --model)

      Without the server running, tab summarization is skipped but the
      bookmarks file is still produced.
    EOS
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/safari-summary --version")
  end
end
