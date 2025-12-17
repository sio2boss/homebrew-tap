class Har < Formula
  desc "Download and install files from the web with automatic extraction and installation"
  homepage "https://github.com/sio2boss/har"
  version "1.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sio2boss/har/releases/download/v1.3.2/har-v1.3.2-apple-arm64.tar.gz"
      sha256 "e5a65fb1098625d3d09db39276255ad0c1609efa9b9d2c2821248f0f95c6a3cb"
    else
      url "https://github.com/sio2boss/har/releases/download/v1.3.2/har-v1.3.2-apple-amd64.tar.gz"
      sha256 "7bae0f22b1418370452d1b9977c4057fcd5a11102b1081817562507a758b2c6c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sio2boss/har/releases/download/v1.3.2/har-v1.3.2-linux-arm64.tar.gz"
      sha256 "d0f6ca4931d220cffd8ad140373a02e9ce421677e693c392866528c4f3fe359a"
    else
      url "https://github.com/sio2boss/har/releases/download/v1.3.2/har-v1.3.2-linux-amd64.tar.gz"
      sha256 "9c56677d5a3ff7b3fda0ce5c1e3c52f8b59880dff74b3debf6cdbcba12cd91c5"
    end
  end

  def install
    bin.install "har"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/har --version")
  end
end
