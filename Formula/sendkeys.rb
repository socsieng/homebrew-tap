class Sendkeys < Formula
  desc "Command line tool for automating keystrokes and mouse events"
  homepage "https://github.com/socsieng/sendkeys"
  url "https://github.com/socsieng/sendkeys.git", :tag => "v1.0.0", :revision => "096a714ed398f444b1739f28b25e9e3c8c5ae377"
  version "1.0.0"
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
    root_url "https://github.com/socsieng/sendkeys/releases/download/v1.0.0"
    cellar :any_skip_relocation
    sha256 "bf95290c24cb3f94a8b4d070abdbc817b93db39590b437b9c1409d1162f449b9" => :catalina
  end
end
