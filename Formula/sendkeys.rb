class Sendkeys < Formula
  desc "Command-line tool for automating keystrokes and mouse events"
  homepage "https://github.com/socsieng/sendkeys"
  url "https://github.com/socsieng/sendkeys.git", tag: "v2.6.2", revision: "a04fdf426111d3b44e26ad0eac5519fc6282bbb7"
  version "2.6.2"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/socsieng/sendkeys/releases/download/v2.6.2"
    sha256 cellar: :any_skip_relocation, arm64_big_sur: "34f75082f751e85a9346609867aeea022073be53fd466dd352685ed4c6428084"
    sha256 cellar: :any_skip_relocation, catalina:      "3aa7c448731bf661fb1c22f394ef0dea6c216168255cf3f65480789380cce6a6"
    sha256 cellar: :any_skip_relocation, big_sur:       "c09ab94e569cc5cf8771acddbe5e41cd27e399d1e01d7498b925d282be9e15cc"
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
