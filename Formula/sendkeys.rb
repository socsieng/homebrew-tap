class Sendkeys < Formula
  desc "Command line tool for automating keystrokes and mouse events"
  homepage "https://github.com/socsieng/sendkeys"
  url "https://github.com/socsieng/sendkeys.git", :tag => "v1.2.0", :revision => "2109f3076e69834c461a1d8c535cb0b8af75c9a0"
  version "1.2.0"
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
    root_url "https://github.com/socsieng/sendkeys/releases/download/v1.2.0"
    cellar :any_skip_relocation
    sha256 "37da71bd831e26d4bd944498b763665739594671933b8bef1801adbf12ba54b0" => :catalina
  end
end
