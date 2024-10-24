class Sendkeys < Formula
  desc "Command-line tool for automating keystrokes and mouse events"
  homepage "https://github.com/socsieng/sendkeys"
  url "https://github.com/socsieng/sendkeys.git", tag: "v4.1.1", revision: "f37eee64c5e822fc8f663467670a19e4c3845238"
  version "4.1.1"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/socsieng/sendkeys/releases/download/v4.1.1"
    sha256 cellar: :any_skip_relocation, arm64_big_sur: "63be32cfad035380893dbb68c8810a8173e749b555b6e2137662bc94e25fe35e"
    sha256 cellar: :any_skip_relocation, big_sur:       "63be32cfad035380893dbb68c8810a8173e749b555b6e2137662bc94e25fe35e"
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
