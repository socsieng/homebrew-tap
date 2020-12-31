class Sendkeys < Formula
  desc "Command line tool for automating keystrokes and mouse events"
  homepage "https://github.com/socsieng/sendkeys"
  url "https://github.com/socsieng/sendkeys.git", :tag => "v0.2.4", :revision => "df089b4032ab31bebd91724f14db2010f5de7229"
  version "0.2.4"
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
    root_url "https://github.com/socsieng/sendkeys/releases/download/v0.2.4"
    cellar :any_skip_relocation
    sha256 "f3c450125c4017efafc5af395348c4604b74be32e710be0292854bf9178b6b7a" => :catalina
  end
end
