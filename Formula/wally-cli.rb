class WallyCli < Formula
  desc "Flash your ZSA Keyboard the EZ way"
  homepage "https://www.zsa.io/wally/"
  url "https://github.com/zsa/wally-cli",
    using:    :git,
    tag:      "2.0.1-linux",
    revision: "e488ddd9fa0aa4c9e6f42ace68937d81989b2078"
  license "MIT"

  depends_on "go" => :build
  depends_on "libusb" => :build

  def install
    system "go build"
    bin.install "wally-cli"
  end

  # test do
  #   system "false"
  # end
end
