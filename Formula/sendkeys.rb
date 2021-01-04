class Sendkeys < Formula
  desc "Command line tool for automating keystrokes and mouse events"
  homepage "https://github.com/socsieng/sendkeys"
  url "https://github.com/socsieng/sendkeys.git", :tag => "v1.3.0", :revision => "3babb87f873583f0565fc215be4a1619942d1513"
  version "1.3.0"
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
    root_url "https://github.com/socsieng/sendkeys/releases/download/v1.3.0"
    cellar :any_skip_relocation
    sha256 "629108a77bee35cd62cfdace84bb7182b2cacf66a083da7d18a80be81ab0285f" => :catalina
  end
end
