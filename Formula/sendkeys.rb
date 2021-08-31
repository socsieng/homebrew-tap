class Sendkeys < Formula
  desc "Command-line tool for automating keystrokes and mouse events"
  homepage "https://github.com/socsieng/sendkeys"
  url "https://github.com/socsieng/sendkeys.git", tag: "v2.7.0", revision: "d5159b2ecbbfff7b2ee9fec64debb9ba2646bc04"
  version "2.7.0"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/socsieng/sendkeys/releases/download/v2.7.0"
    sha256 cellar: :any_skip_relocation, arm64_big_sur: "1a70c747be195c183624aeba7f348d629a69e3e482a450148601e84c2cf40f78"
    sha256 cellar: :any_skip_relocation, catalina:      "efed06f3ec860fa96156574391c46bb716b5507a7331724cd4dc70c48cec0546"
    sha256 cellar: :any_skip_relocation, big_sur:       "cd017e359aeeca1f4d8233da5e4ced351cb221d239d583fa3a24feb321a5ef0f"
  end

  pour_bottle? do
    reason "Prefer installation from binary."
    satisfy { true }
  end

  depends_on xcode: ["12.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "sendkeys" "--help"
  end
end
