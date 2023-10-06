class Sendkeys < Formula
  desc "Command-line tool for automating keystrokes and mouse events"
  homepage "https://github.com/socsieng/sendkeys"
  url "https://github.com/socsieng/sendkeys.git", tag: "v2.9.1", revision: "1fa0f95a559cebbfd70e097fd3f3b4da4c7fe521"
  version "2.9.1"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/socsieng/sendkeys/releases/download/v2.9.1"
    sha256 cellar: :any_skip_relocation, arm64_big_sur: "dd965a3a4f7f1ee63f2edaf31d6b7242649590531216ed7a1fa7dbaa1d14791c"
    sha256 cellar: :any_skip_relocation, big_sur:       "2286c10389c809e0a07747e3d94c13d12b751825b3dde0349ad5e5452bb66503"
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
