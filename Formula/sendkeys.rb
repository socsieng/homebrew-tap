class Sendkeys < Formula
  desc "Command-line tool for automating keystrokes and mouse events"
  homepage "https://github.com/socsieng/sendkeys"
  url "https://github.com/socsieng/sendkeys.git", tag: "v2.9.0", revision: "7aac494f0aa186b59cdbba02bc5f1c13ff17a1ae"
  version "2.9.0"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/socsieng/sendkeys/releases/download/v2.9.0"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "600b2a4bd1e203737c8d05ae12d2c66a15599009b3fb4db5bface807c8d2bb84"
    sha256 cellar: :any_skip_relocation, catalina:      "9d14d55e8fcda382e0cc8f7876ae8b2b36ead26514d8f15985e8f2907fded1b0"
    sha256 cellar: :any_skip_relocation, big_sur:       "f25e1506386518e3d7c17cdb41f413b28f8469d71fded07476f58a005dbd72a3"
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
