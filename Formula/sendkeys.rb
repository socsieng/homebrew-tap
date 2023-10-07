class Sendkeys < Formula
  desc "Command-line tool for automating keystrokes and mouse events"
  homepage "https://github.com/socsieng/sendkeys"
  url "https://github.com/socsieng/sendkeys.git", tag: "v4.0.0", revision: "f46e5da792d4dfa00fbaca5992cbd01145a340cd"
  version "4.0.0"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/socsieng/sendkeys/releases/download/v4.0.0"
    sha256 cellar: :any_skip_relocation, arm64_big_sur: "2b7c8fdf7e87903575e142b9c30485f661422c8e7d342dc1d481adf9585049a7"
    sha256 cellar: :any_skip_relocation, big_sur:       "ef942284fd25aed0a63a19db348a8454032d6e20ef5fc8fa20d6751e49f9cd43"
  end

  pour_bottle? do
    reason "Prefer installation from binary."
    satisfy { true }
  end

  depends_on xcode: ["12.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "sendkeys" "--help"
  end
end
