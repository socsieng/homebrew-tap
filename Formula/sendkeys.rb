class Sendkeys < Formula
  desc "Command line tool for automating keystrokes and mouse events"
  homepage "https://github.com/socsieng/sendkeys"
  url "https://github.com/socsieng/sendkeys.git", :tag => "v2.1.0", :revision => "ba7e986dbb5b34d20bb61079bb59d3d0a4f246cf"
  version "2.1.0"
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
    root_url "https://github.com/socsieng/sendkeys/releases/download/v2.1.0"
    cellar :any_skip_relocation
    sha256 "35111cce316746089c1f8df34cde7bbe04a0053c5099e5604ab3933fc529a93a" => :catalina
  end
end
