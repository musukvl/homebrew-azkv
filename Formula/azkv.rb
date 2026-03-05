class Azkv < Formula
  desc "Terminal UI for managing Azure Key Vaults"
  homepage "https://github.com/musukvl/azkv"
  version "1.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/musukvl/azkv/releases/download/v1.0.2/azkv-1.0.2-osx-arm64.tar.gz"
      sha256 "034fa8aef490037ced9ab8279d80cb884e637fec6662ca915f82cd30bfaf0f6c"
    end
    on_intel do
      url "https://github.com/musukvl/azkv/releases/download/v1.0.2/azkv-1.0.2-osx-x64.tar.gz"
      sha256 "6240652f314862d9c15dfab9bf16cf8c7b6dbc5f3297219f06e28032ddac8695"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/musukvl/azkv/releases/download/v1.0.2/azkv-1.0.2-linux-x64.tar.gz"
      sha256 "5c6fa3a12d9869d361f65d54d1f16a9f0212e5206b9372bd3d9824079d229a1a"
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
