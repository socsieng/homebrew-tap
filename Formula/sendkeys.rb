class Sendkeys < Formula
  desc "Command line tool for automating keystrokes and mouse events"
  homepage "https://github.com/socsieng/sendkeys"
  url "https://github.com/socsieng/sendkeys.git", :tag => "v2.2.0", :revision => "8e4150926632d24522b444853de97fca087e928f"
  version "2.2.0"
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
    root_url "https://github.com/socsieng/sendkeys/releases/download/v2.2.0"
    cellar :any_skip_relocation
    sha256 "b1fa2f5b98f87522baf0f6db36f5db04e90b82a02a4802a187555fa005505be3" => :catalina
  end
end
