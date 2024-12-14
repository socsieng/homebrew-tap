class Sendkeys < Formula
  desc "Command-line tool for automating keystrokes and mouse events"
  homepage "https://github.com/socsieng/sendkeys"
  url "https://github.com/socsieng/sendkeys.git", tag: "v4.3.1", revision: "c5c8dd98ee8d258ce150c6503baa76db49a38287"
  version "4.3.1"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/socsieng/sendkeys/releases/download/v4.3.1"
    sha256 cellar: :any_skip_relocation, arm64_big_sur: "c7e02995a0ceeeb75c5c230b00675450f0008aa3986125cbbc4d017ad4e96ec2"
    sha256 cellar: :any_skip_relocation, big_sur:       "c7e02995a0ceeeb75c5c230b00675450f0008aa3986125cbbc4d017ad4e96ec2"
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
