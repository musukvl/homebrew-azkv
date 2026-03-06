class Azkv < Formula
  desc "Terminal UI for managing Azure Key Vaults"
  homepage "https://github.com/musukvl/azkv"
  version "1.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/musukvl/azkv/releases/download/v1.0.3/azkv-1.0.3-osx-arm64.tar.gz"
      sha256 "4d701477296f9d974d4958f43aa7927f791c10e6f3cc1daffdf45d7e35f3d6c8"
    end
    on_intel do
      url "https://github.com/musukvl/azkv/releases/download/v1.0.3/azkv-1.0.3-osx-x64.tar.gz"
      sha256 "93784ab61d09d7c457bd22b1aafb6321accaefa8025abde7874b81a237b53355"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/musukvl/azkv/releases/download/v1.0.3/azkv-1.0.3-linux-x64.tar.gz"
      sha256 "8eefa7e680313184e30c2e05514638c0335c47011110ae1a5fb20b302431ab68"
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
