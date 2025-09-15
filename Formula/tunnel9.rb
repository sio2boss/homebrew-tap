class Tunnel9 < Formula
  desc "Terminal user interface (TUI) for managing SSH tunnels"
  homepage "https://github.com/sio2boss/tunnel9"
  version "1.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sio2boss/tunnel9/releases/download/v#{version}/tunnel9-v#{version}-apple-arm64.tar.gz"
      sha256 "793498df905405df15632b993282bc8cc01b48acefc9397eafbf60989b1de22b"
    else
      url "https://github.com/sio2boss/tunnel9/releases/download/v#{version}/tunnel9-v#{version}-apple-amd64.tar.gz"
      sha256 "fc1a4da1aac2cc836b8e8f3dc0930f5b6df2ea8ae9ea73f556e1c7b94ae2a31f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sio2boss/tunnel9/releases/download/v#{version}/tunnel9-v#{version}-linux-arm64.tar.gz"
      sha256 "e7801edc94474aba9b33fb21015bd54983ae31bbbf8e9098fd4b321e4d95eb45"
    else
      url "https://github.com/sio2boss/tunnel9/releases/download/v#{version}/tunnel9-v#{version}-linux-amd64.tar.gz"
      sha256 "888757295fc82ddea248bce876ca5440e2b7a193e5ba5d809485378b4c1dec6e"
    end
  end

  def install
    bin.install "tunnel9"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tunnel9 --help")
  end
end
