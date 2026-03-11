class Atlas9 < Formula
  desc "Download and install files from the web with automatic extraction and installation"
  homepage "https://github.com/sio2boss/atlas9"
  version "0.9.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sio2boss/atlas9/releases/download/v0.9.1/atlas9_darwin_arm64.tar.gz"
      sha256 "ba5c298c442bf7e487a5a2251e42a332ea085135ea803358c26ebd2ae8340b3d"
    else
      url "https://github.com/sio2boss/atlas9/releases/download/v0.9.1/atlas9_darwin_amd64.tar.gz"
      sha256 "0e610e606fb80f33edc500dc93ac27c43ddc18885474ce1f292f229f6996d6f6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sio2boss/atlas9/releases/download/v0.9.1/atlas9_linux_arm64.tar.gz"
      sha256 "997a2f3099d676c365a3fbf05435ca48543c3eb1749ec25e16c42cf0e8388d25"
    else
      url "https://github.com/sio2boss/atlas9/releases/download/v0.9.1/atlas9_linux_amd64.tar.gz"
      sha256 "63eb85bf3fbb1a5429c1ebfd90697cc93656b604032c6680c3c69971c350e58e"
    end
  end

  def install
    bin.install "atlas9"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/atlas9 --version")
  end
end
