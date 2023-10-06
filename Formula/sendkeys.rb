class Sendkeys < Formula
  desc "Command-line tool for automating keystrokes and mouse events"
  homepage "https://github.com/socsieng/sendkeys"
  url "https://github.com/socsieng/sendkeys.git", tag: "v3.0.1", revision: "d4ecab0568c7a848f8dad22aad0e68e87f0000c6"
  version "3.0.1"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/socsieng/sendkeys/releases/download/v3.0.1"
    sha256 cellar: :any_skip_relocation, arm64_big_sur: "de5d9fb2c62adbb04fb21ae131963d9a8178c6c813f6eccad7b486591c70201c"
    sha256 cellar: :any_skip_relocation, big_sur:       "3a2c1f9656487d2cf07eafc84689c54b4042744b22b5708cc9068f9bccdc87a7"
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
