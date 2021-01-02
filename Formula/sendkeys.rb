class Sendkeys < Formula
  desc "Command line tool for automating keystrokes and mouse events"
  homepage "https://github.com/socsieng/sendkeys"
  url "https://github.com/socsieng/sendkeys.git", :tag => "v1.1.1", :revision => "1ce7da673b9671dc77fd8ca08e829dd989629faa"
  version "1.1.1"
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
    root_url "https://github.com/socsieng/sendkeys/releases/download/v1.1.1"
    cellar :any_skip_relocation
    sha256 "52077d489f682039ca61714d084e01bf1fe995605a4ba3fa3074f74237a956b1" => :catalina
  end
end
