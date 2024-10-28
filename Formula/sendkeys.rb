class Sendkeys < Formula
  desc "Command-line tool for automating keystrokes and mouse events"
  homepage "https://github.com/socsieng/sendkeys"
  url "https://github.com/socsieng/sendkeys.git", tag: "v4.3.0", revision: "22bbd22df37061299c288502246e7a6a516c6393"
  version "4.3.0"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/socsieng/sendkeys/releases/download/v4.3.0"
    sha256 cellar: :any_skip_relocation, arm64_big_sur: "474c4142fa3d5e0c24aecb740b9b07701b2ee2470a67d3468d29fcb31ea93b47"
    sha256 cellar: :any_skip_relocation, big_sur:       "474c4142fa3d5e0c24aecb740b9b07701b2ee2470a67d3468d29fcb31ea93b47"
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
