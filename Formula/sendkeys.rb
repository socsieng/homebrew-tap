class Sendkeys < Formula
  desc "Command line tool for automating keystrokes and mouse events"
  homepage "https://github.com/socsieng/sendkeys"
  url "https://github.com/socsieng/sendkeys.git", :tag => "v0.2.3", :revision => "f12e8b9f13bf97133cc845f7266e6b5b22ea6416"
  version "0.2.3"
  license "Apache-2.0"

  depends_on :xcode => ["12.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "sendkeys" "--help"
  end

  pour_bottle? do
    reason "Prefer installation from binary."
    satisfy { true }
  end

  bottle do
    root_url "https://github.com/socsieng/sendkeys/releases/download/v0.2.3"
    cellar :any_skip_relocation
    sha256 "26b2a445bfbd55e910df8c4a6beafd7bd0175ca2df6f2edb8cdf077f9ef527a0" => :catalina
  end
end
