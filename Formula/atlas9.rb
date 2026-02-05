class Atlas9 < Formula
  desc "Download and install files from the web with automatic extraction and installation"
  homepage "https://github.com/sio2boss/atlas9"
  version "0.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sio2boss/atlas9/releases/download/v0.9.0/atlas9_darwin_arm64"
      sha256 "8b003eda9f869969ca6c8410e69bc921b6937ca9d87d2444c2b583fe7e33128f"
    else
      url "https://github.com/sio2boss/atlas9/releases/download/v0.9.0/atlas9_darwin_amd64"
      sha256 "ff058e7a7de74a8ba08620ef2fe6bfeaf94646bf4c486262c7283f595c65681b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sio2boss/atlas9/releases/download/v0.9.0/atlas9_linux_arm64"
      sha256 "8dbaed8cfc0d5b667154bcdeb99bcce5c4db5be45b4e1151d6ae910fcd612a85"
    else
      url "https://github.com/sio2boss/atlas9/releases/download/v0.9.0/atlas9_linux_amd64"
      sha256 "a04d10430aafef5ce85f09b222759a7c5f7d8aeb661aa52ed790d6b57bb2013e"
    end
  end

  def install
    bin.install "atlas9"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/atlas9 --version")
  end
end
