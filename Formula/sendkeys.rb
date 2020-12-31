class Sendkeys < Formula
  desc "Command line tool for automating keystrokes and mouse events"
  homepage "https://github.com/socsieng/sendkeys"
  url "https://github.com/socsieng/sendkeys.git", :tag => "v0.3.0", :revision => "e4843fb3afd11550a468d1d6738c4d7c41fc59a3"
  version "0.3.0"
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
    root_url "https://github.com/socsieng/sendkeys/releases/download/v0.3.0"
    cellar :any_skip_relocation
    sha256 "48fc6f7f8ceab7d862844a87cc97ca346620357132768e2a045a5818e37ffc18" => :catalina
  end
end
