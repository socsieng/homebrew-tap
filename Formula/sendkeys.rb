class Sendkeys < Formula
  desc "Command line tool for automating keystrokes and mouse events"
  homepage "https://github.com/socsieng/sendkeys"
  url "https://github.com/socsieng/sendkeys.git", :tag => "v0.5.0", :revision => "6d4a847f1afe3e3ddead28a78743589e811ad78a"
  version "0.5.0"
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
    root_url "https://github.com/socsieng/sendkeys/releases/download/v0.5.0"
    cellar :any_skip_relocation
    sha256 "97ff242aea23c49a8aca72f666e7cfdcfb871b7ea56f645ec9d81f89616e83be" => :catalina
  end
end
