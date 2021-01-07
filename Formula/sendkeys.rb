class Sendkeys < Formula
  desc "Command line tool for automating keystrokes and mouse events"
  homepage "https://github.com/socsieng/sendkeys"
  url "https://github.com/socsieng/sendkeys.git", :tag => "v2.1.1", :revision => "aa9c20d37dc20fce4d4cb927728f125ab5e0a9e5"
  version "2.1.1"
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
    root_url "https://github.com/socsieng/sendkeys/releases/download/v2.1.1"
    cellar :any_skip_relocation
    sha256 "f2ae7186d522a4a9418d566021856fb9ef277240ed101b94808c56812fd38ac2" => :catalina
  end
end
