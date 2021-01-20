class Sendkeys < Formula
  desc "Command line tool for automating keystrokes and mouse events"
  homepage "https://github.com/socsieng/sendkeys"
  url "https://github.com/socsieng/sendkeys.git", :tag => "v2.3.0", :revision => "007525c6eea3698ded30301f090c8950d1ac8136"
  version "2.3.0"
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
    root_url "https://github.com/socsieng/sendkeys/releases/download/v2.3.0"
    cellar :any_skip_relocation
    sha256 "312b6f5e786f623e9859283884b86ae49decfc5025c5b705c6486d918115d2b5" => :catalina
  end
end
