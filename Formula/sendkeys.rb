class Sendkeys < Formula
  desc "Command line tool for automating keystrokes and mouse events"
  homepage "https://github.com/socsieng/sendkeys"
  url "https://github.com/socsieng/sendkeys.git", :tag => "v2.0.0", :revision => "117fef5576b1ed7c1b9566f78e8cc13a3e101ae4"
  version "2.0.0"
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
    root_url "https://github.com/socsieng/sendkeys/releases/download/v2.0.0"
    cellar :any_skip_relocation
    sha256 "8c77fc9044fd90db9f49633085893610f08993ff589eb7eea627205b3f0cde68" => :catalina
  end
end
