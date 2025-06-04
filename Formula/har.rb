class Har < Formula
  desc "Download and install files from the web with automatic extraction and installation"
  homepage "https://github.com/sio2boss/har"
  version "1.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sio2boss/har/releases/download/v1.3.1/har-v1.3.1-apple-arm64.tar.gz"
      sha256 "3f0a14c7a66c6dbf10d2a2672535cc5df252950a03a9e1f822288b700dfe2e58"
    else
      url "https://github.com/sio2boss/har/releases/download/v1.3.1/har-v1.3.1-apple-amd64.tar.gz"
      sha256 "7c26cadbdfdc2668f849e4599ad8b59e23e6b52e7d94aa88b45b1cca9310ba35"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sio2boss/har/releases/download/v1.3.1/har-v1.3.1-linux-arm64.tar.gz"
      sha256 "bdefaaade132301c853f392c0b1b7de4eb89080022c321d93800424c424087f5"
    else
      url "https://github.com/sio2boss/har/releases/download/v1.3.1/har-v1.3.1-linux-amd64.tar.gz"
      sha256 "44eed387a36b12724babf6b2d924a5d8c0302ae015687a6dab56cd04f1edc3b2"
    end
  end

  def install
    bin.install "har"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/har --version")
  end
end
