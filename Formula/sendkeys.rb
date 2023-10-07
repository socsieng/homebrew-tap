class Sendkeys < Formula
  desc "Command-line tool for automating keystrokes and mouse events"
  homepage "https://github.com/socsieng/sendkeys"
  url "https://github.com/socsieng/sendkeys.git", tag: "v4.0.4", revision: "7fdb09bc0d52eb1d4d5a4491a734484aecda144e"
  version "4.0.4"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/socsieng/sendkeys/releases/download/v4.0.4"
    sha256 cellar: :any_skip_relocation, arm64_big_sur: "dc49e5cfe21f899ef36b1fe27ef1f2c818bc01a87298d2624e79f72a49f28c90"
    sha256 cellar: :any_skip_relocation, big_sur:       "5368fea1601fd670db41e663604fd16a3b3933ca3593a90ce7504d33b125454a"
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
