class Sendkeys < Formula
  desc "Command line tool for automating keystrokes and mouse events"
  homepage "https://github.com/socsieng/sendkeys"
  url "https://github.com/socsieng/sendkeys.git", :tag => "v0.4.0", :revision => "2861bf927bf0d2aa5e0fee027996e8fc9f1c9600"
  version "0.4.0"
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
    root_url "https://github.com/socsieng/sendkeys/releases/download/v0.4.0"
    cellar :any_skip_relocation
    sha256 "f82a78d729a213c4dda8ad6120c4b2d8cddea46bc3f3f1ef996464f1fec9cf7c" => :catalina
  end
end
