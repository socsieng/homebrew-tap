class Sendkeys < Formula
  desc "Command-line tool for automating keystrokes and mouse events"
  homepage "https://github.com/socsieng/sendkeys"
  url "https://github.com/socsieng/sendkeys.git", tag: "v4.0.3", revision: "46d744f84b50e5521c1486cf987297f2902740a6"
  version "4.0.3"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/socsieng/sendkeys/releases/download/v4.0.3"
    sha256 cellar: :any_skip_relocation, arm64_big_sur: "bbb111d8089268e31c68ef826d80c5c99e7d04f1980d39ec3dfd67961be9cde3"
    sha256 cellar: :any_skip_relocation, big_sur:       "c7158129014aada4edad1864b1f76791d3a1f9396c36d43d4331061def27b2bb"
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
