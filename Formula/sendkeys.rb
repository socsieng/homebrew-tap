class Sendkeys < Formula
  desc "Command line tool for automating keystrokes and mouse events"
  homepage "https://github.com/socsieng/sendkeys"
  url "https://github.com/socsieng/sendkeys.git", :tag => "v2.4.0", :revision => "69f8c7718797c5dbb3323f5562624ddeecf7f300"
  version "2.4.0"
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
    root_url "https://github.com/socsieng/sendkeys/releases/download/v2.4.0"
    cellar :any_skip_relocation
    sha256 "2678d90af53756fbbc072c73e3df6a2cfcc0ee7ad5da3a261bc1d21f3408ca27" => :catalina
    sha256 "111b1b8e772a0d91650beb1762d0092ae27efec89255debb7125efb3d1d74e4e" => :big_sur
    sha256 "8b44362905ced4a8988a6292ad1fdb4749c901d90d6953b2becd57013ccc88b4" => :arm64_big_sur
  end
end
