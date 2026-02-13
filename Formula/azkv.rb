class Azkv < Formula
  desc "Terminal UI for managing Azure Key Vaults"
  homepage "https://github.com/musukvl/azkv"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/musukvl/azkv/releases/download/v1.0.1/azkv-1.0.1-osx-arm64.tar.gz"
      sha256 "a04cd7bb72aaace81e63894f000cc8d547288d7de78ea64d741fd259bba5e1db"
    end
    on_intel do
      url "https://github.com/musukvl/azkv/releases/download/v1.0.1/azkv-1.0.1-osx-x64.tar.gz"
      sha256 "1111366749cdd8351bfd691ea8946be01ade9b1e39cde39df1e75b1d7f0d5504"
    end
  end

  depends_on "azure-cli"

  def install
    bin.install "azkv"
  end

  test do
    assert_match "Azure Key Vault Manager", shell_output("#{bin}/azkv --help")
  end
end
