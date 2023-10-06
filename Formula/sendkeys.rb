class Sendkeys < Formula
  desc "Command-line tool for automating keystrokes and mouse events"
  homepage "https://github.com/socsieng/sendkeys"
  url "https://github.com/socsieng/sendkeys.git", tag: "v3.0.2", revision: "e44cbef15400c68dc4c734959a7f1146586b292d"
  version "3.0.2"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/socsieng/sendkeys/releases/download/v3.0.2"
    sha256 cellar: :any_skip_relocation, arm64_big_sur: "7a4197e6f626d467514ddfa584350dd65e14700df74fadb5407c6e6ff3d2b813"
    sha256 cellar: :any_skip_relocation, big_sur:       "bc0a99dffe518d814ad19ea08eff2acc2db5efce01f4a7819d492a7494024a37"
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
