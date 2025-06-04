class Tunnel9 < Formula
  desc "Terminal user interface (TUI) for managing SSH tunnels"
  homepage "https://github.com/sio2boss/tunnel9"
  version "1.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sio2boss/tunnel9/releases/download/v#{version}/tunnel9-v#{version}-apple-arm64.tar.gz"
      sha256 "0567f0032c212ecff63d3b2b4df907f8c8c298c0f1e19e046fa6eb13434f4126"
    else
      url "https://github.com/sio2boss/tunnel9/releases/download/v#{version}/tunnel9-v#{version}-apple-amd64.tar.gz"
      sha256 "e933fded44e603c5f2e656eff4896e6aa84e1c553cf6af20d3a5baea169a3580"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sio2boss/tunnel9/releases/download/v#{version}/tunnel9-v#{version}-linux-arm64.tar.gz"
      sha256 "b118b9817404c1081923a41b5ef34f918db7c96a520bb0b26a83501c504f6336"
    else
      url "https://github.com/sio2boss/tunnel9/releases/download/v#{version}/tunnel9-v#{version}-linux-amd64.tar.gz"
      sha256 "e86e0602b24a9e8c1dba5bc9332f2f9bfd4a10a97ddd8cbd628d74d85569bba8"
    end
  end

  def install
    bin.install "tunnel9"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tunnel9 --help")
  end
end
