class Sendkeys < Formula
  desc "Command-line tool for automating keystrokes and mouse events"
  homepage "https://github.com/socsieng/sendkeys"
  url "https://github.com/socsieng/sendkeys.git", tag: "v2.5.2", revision: "a459fc8f6ed33c7bbc42a1fbb552721a641e5092"
  version "2.5.2"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/socsieng/sendkeys/releases/download/v2.5.2"
    sha256 cellar: :any_skip_relocation, arm64_big_sur: "1466e14f353894e78a72eaaa12dd9850271d98561b5dd94e9cf7df5a6205198e"
    sha256 cellar: :any_skip_relocation, catalina:      "70dea18e1b29720c31f7323578655fb57393daad1694c39e58a87c6e3849b711"
    sha256 cellar: :any_skip_relocation, big_sur:       "4d94e8681f993aea99ba33ca80fc7f97f95cdc54c02effea9cbc7b9f65b800b7"
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
