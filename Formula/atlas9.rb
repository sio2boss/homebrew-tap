class Atlas9 < Formula
  desc "Terminal user interface (TUI) for using atlas to manage your database"
  homepage "https://github.com/sio2boss/atlas9"
  version "0.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sio2boss/atlas9/releases/download/v0.9.0/atlas9_darwin_arm64.tar.gz"
      sha256 "ed236c6c31181ba9ed9c95f78d8038eefe3ed09f84544d92e7c7fcec5fcdd73f"
    else
      url "https://github.com/sio2boss/atlas9/releases/download/v0.9.0/atlas9_darwin_amd64.tar.gz"
      sha256 "5077372e0a6f8eb1a57ec2594e084604c705a84f587a1bc995c51384890ceab1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sio2boss/atlas9/releases/download/v0.9.0/atlas9_linux_arm64.tar.gz"
      sha256 "91b15cfb4134501a54424076e688c574aeece5337e6cd9f6065ebf5e7ee860bb"
    else
      url "https://github.com/sio2boss/atlas9/releases/download/v0.9.0/atlas9_linux_amd64.tar.gz"
      sha256 "03fd5b4e42687ee3713c579d72e59a56935e2c1abcb80e842ce5bd78915869bd"
    end
  end

  def install
    bin.install "atlas9"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/atlas9 --help")
  end
end
