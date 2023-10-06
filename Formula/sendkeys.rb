class Sendkeys < Formula
  desc "Command-line tool for automating keystrokes and mouse events"
  homepage "https://github.com/socsieng/sendkeys"
  url "https://github.com/socsieng/sendkeys.git", tag: "v3.0.0", revision: "60a622ed0fb374d710131e2862043f8a640e4be3"
  version "3.0.0"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/socsieng/sendkeys/releases/download/v3.0.0"
    sha256 cellar: :any_skip_relocation, arm64_big_sur: "634adab421c39199f9ec65f92f2adfddfc58006f01df67a47fed59ad03e7a492"
    sha256 cellar: :any_skip_relocation, big_sur:       "f9cc5eacf93d60ef212e5fcd9a94031f4dbfaa24d2702e5546966596e4eca602"
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
