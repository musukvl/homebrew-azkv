class Azkv < Formula
  desc "Terminal UI for managing Azure Key Vaults"
  homepage "https://github.com/musukvl/azkv"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/musukvl/azkv/releases/download/v1.0.0/azkv-1.0.0-osx-arm64.tar.gz"
      sha256 "5c1245bfbc2acfed6eed556d7ae5b91e7c4fab125c1c1c874f0ed075ea01dafc"
    end
    on_intel do
      url "https://github.com/musukvl/azkv/releases/download/v1.0.0/azkv-1.0.0-osx-x64.tar.gz"
      sha256 "e07e397ca16b760d48a52c46b758e2b3b1bbd68c58fa770e21c6642fc13cb2a7"
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
