class Sendkeys < Formula
  desc "Command-line tool for automating keystrokes and mouse events"
  homepage "https://github.com/socsieng/sendkeys"
  url "https://github.com/socsieng/sendkeys.git", tag: "v4.1.2", revision: "55121e16a81b029926be5792c08cec58b12d439e"
  version "4.1.2"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/socsieng/sendkeys/releases/download/v4.1.2"
    sha256 cellar: :any_skip_relocation, arm64_big_sur: "20ae60f0bf60a0c8254297d1c6f4f5e7d7850f3cd6604e70690d1eb43191d026"
    sha256 cellar: :any_skip_relocation, big_sur:       "20ae60f0bf60a0c8254297d1c6f4f5e7d7850f3cd6604e70690d1eb43191d026"
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
