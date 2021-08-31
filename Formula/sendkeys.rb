class Sendkeys < Formula
  desc "Command-line tool for automating keystrokes and mouse events"
  homepage "https://github.com/socsieng/sendkeys"
  url "https://github.com/socsieng/sendkeys.git", tag: "v2.7.1", revision: "36db30e65bb210a22a1fb87682b1cd8669044f16"
  version "2.7.1"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/socsieng/sendkeys/releases/download/v2.7.1"
    sha256 cellar: :any_skip_relocation, arm64_big_sur: "29d768981fd121519a84551c6a421d4e0e579e7df3fdc4edbee8399ef8421b05"
    sha256 cellar: :any_skip_relocation, catalina:      "7434872916cb9ccaa908f3844646dbe08692accca94eb653086ad38bdc3c5d05"
    sha256 cellar: :any_skip_relocation, big_sur:       "a22eb294fbe48661cd4eb1194aaa632bbaf65fe6d59d431ab3f8923bec5f2ec3"
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
