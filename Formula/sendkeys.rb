class Sendkeys < Formula
  desc "Command line tool for automating keystrokes and mouse events"
  homepage "https://github.com/socsieng/sendkeys"
  url "https://github.com/socsieng/sendkeys.git", :tag => "v2.3.7", :revision => "591e4ec7b4db72b73cb25b270403864f349038e3"
  version "2.3.7"
  license "Apache-2.0"

  depends_on :xcode => ["12.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "sendkeys" "--help"
  end

  pour_bottle? do
    reason "Prefer installation from binary."
    satisfy { true }
  end

  bottle do
    root_url ""
    cellar :any_skip_relocation
    sha256 "e610ed4d4b5d5b48dd9bb98613102330727694fa1a5cc3eb8c052849842b0a05" => :catalina
    sha256 "abf3eaa0e7cd84fe8d4640755ce6c53f953fcd6deadfb5bd31dbebc894db8f5f" => :big_sur
    sha256 "16595ae37c7e466370affe4f7f080f71b797152591fe98997becfa023e41732b" => :arm64_big_sur
  end
end
