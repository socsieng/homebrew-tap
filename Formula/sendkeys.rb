class Sendkeys < Formula
  desc "Command-line tool for automating keystrokes and mouse events"
  homepage "https://github.com/socsieng/sendkeys"
  url "https://github.com/socsieng/sendkeys.git", tag: "v2.8.0", revision: "89660bc19a41e87d9015296da8140fe941b26168"
  version "2.8.0"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/socsieng/sendkeys/releases/download/v2.8.0"
    sha256 cellar: :any_skip_relocation, arm64_big_sur: "99963dfebc20c176dbde87797a744956e2b92edc85137ffd39a07a612bd059e4"
    sha256 cellar: :any_skip_relocation, catalina:      "86d74d33036917f19c3ba8787e1862926a9cb6005d527f98fe27b8ca31f2e0f8"
    sha256 cellar: :any_skip_relocation, big_sur:       "20b390ea43cdca8ed471b9740b339e54ce8b0bc3a99cd0622aa00fab2dd26b66"
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
