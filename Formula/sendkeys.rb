class Sendkeys < Formula
  desc "Command-line tool for automating keystrokes and mouse events"
  homepage "https://github.com/socsieng/sendkeys"
  url "https://github.com/socsieng/sendkeys.git", tag: "v4.2.0", revision: "d78aa150d9dc421b7a3b1558822e37c273a53519"
  version "4.2.0"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/socsieng/sendkeys/releases/download/v4.2.0"
    sha256 cellar: :any_skip_relocation, arm64_big_sur: "4dc21a493b79d662d18c44a0e244d2ba89c8be1dd2ec4975cd794450a26ded92"
    sha256 cellar: :any_skip_relocation, big_sur:       "4dc21a493b79d662d18c44a0e244d2ba89c8be1dd2ec4975cd794450a26ded92"
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
