class Sendkeys < Formula
  desc "Command line tool for automating keystrokes and mouse events"
  homepage "https://github.com/socsieng/sendkeys"
  url "https://github.com/socsieng/sendkeys.git", :tag => "v2.3.10", :revision => "83462ec5e27e906855b9fb25db0c1566d13a2095"
  version "2.3.10"
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
    root_url ""
    cellar :any_skip_relocation
    sha256 "2685424fd5d552070f0ef2292be79f68618507c5edeccacb9858b2171358b0c0" => :catalina
    sha256 "2f791e7cc227701e5f13964aecf17c5a53a713a96c07d6ceef384326f8714a7d" => :big_sur
    sha256 "57aca21533085671ffe2b0e003e32ba78c15717961cd2c6dcfbf6ac370b92df9" => :arm64_big_sur
  end
end
