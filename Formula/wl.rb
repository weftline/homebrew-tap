# The wl CLI (Weftline). Written by release-wl.yml for v0.1.0; do not edit by hand.
class Wl < Formula
  desc "Work with Weftline from your terminal: sign in, start local sessions, answer Claude Code's hooks"
  homepage "https://github.com/weftline/wl"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/weftline/wl/releases/download/wl/v0.1.0/wl_0.1.0_darwin_arm64.tar.gz"
      sha256 "7e5578d86deb5dcf13276fa80e207ec104617d2ae0ebecddb61dfdcec00fd2da"
    end
    on_intel do
      url "https://github.com/weftline/wl/releases/download/wl/v0.1.0/wl_0.1.0_darwin_amd64.tar.gz"
      sha256 "44319bc02d4babdcd4d3669705887e85698adac3055452661ddef5bd998e8461"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/weftline/wl/releases/download/wl/v0.1.0/wl_0.1.0_linux_arm64.tar.gz"
      sha256 "79390a717e6dfb24e048075891398a0b5e5efcdf473aafe15a31bb9f1e97cbbf"
    end
    on_intel do
      url "https://github.com/weftline/wl/releases/download/wl/v0.1.0/wl_0.1.0_linux_amd64.tar.gz"
      sha256 "613c1812870deccf7e32386496dd13783691ec0f4d1cf6ed80b7312e5bd1e51d"
    end
  end

  def install
    bin.install "wl"
  end

  test do
    assert_match "wl v0.1.0", shell_output("#{bin}/wl version")
  end
end
