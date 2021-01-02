class Sendkeys < Formula
  desc "Command line tool for automating keystrokes and mouse events"
  homepage "https://github.com/socsieng/sendkeys"
  url "https://github.com/socsieng/sendkeys.git", :tag => "v1.1.0", :revision => "9b6228f68a822fb2533f570580906bf2b6460dcd"
  version "1.1.0"
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
    root_url "https://github.com/socsieng/sendkeys/releases/download/v1.1.0"
    cellar :any_skip_relocation
    sha256 "0d2ab4de2af607315f20ff9ec78f224f07e1d2df2ec3f9ecfa7ce35984aa6c41" => :catalina
  end
end
