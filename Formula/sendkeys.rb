class Sendkeys < Formula
  desc "Command-line tool for automating keystrokes and mouse events"
  homepage "https://github.com/socsieng/sendkeys"
  url "https://github.com/socsieng/sendkeys.git", tag: "v2.6.1", revision: "cf6979aebcc2697a29b99d7f4b9e09d1a015d90f"
  version "2.6.1"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/socsieng/sendkeys/releases/download/v2.6.1"
    sha256 cellar: :any_skip_relocation, arm64_big_sur: "333da54f3a17ede7b8007882f2df27e6c19f835b076269de8f6f5f47eccb4393"
    sha256 cellar: :any_skip_relocation, catalina:      "ea4149af5d0892be05fd3cba732e669a70616161cf501a80f02c812cd46fff99"
    sha256 cellar: :any_skip_relocation, big_sur:       "10af506c8da525dc597fefb12d61ad362eb87c99bd55c3e8841b523718adf06a"
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
