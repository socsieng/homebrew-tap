class Sendkeys < Formula
  desc "Command line tool for automating keystrokes and mouse events"
  homepage "https://github.com/socsieng/sendkeys"
  url "https://github.com/socsieng/sendkeys.git", :tag => "v2.3.9", :revision => "06bc33c28fd572d544d87ad065861b539d9b8a50"
  version "2.3.9"
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
    sha256 "973a160239300b6adbb06f44bdb684d95b9ae1fe68d59cdd33ae917f393715f7" => :catalina
    sha256 "86aebee629295e7c2d20d019d264a5205531bef36a77bf9e835756f389fbd146" => :big_sur
    sha256 "3fec15679839042b7a6f088400365e1e7be7b9f23a96c92417da1f3e4bbe0c7f" => :arm64_big_sur
  end
end
