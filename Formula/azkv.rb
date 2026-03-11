class Azkv < Formula
  desc "Terminal UI for managing Azure Key Vaults"
  homepage "https://github.com/musukvl/azkv"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/musukvl/azkv/releases/download/v1.2.0/azkv-1.2.0-osx-arm64.tar.gz"
      sha256 "2b981a673a7e3e57cd92cc52888079b68da15f7273f286f888bd5d20778e64cb"
    end
    on_intel do
      url "https://github.com/musukvl/azkv/releases/download/v1.2.0/azkv-1.2.0-osx-x64.tar.gz"
      sha256 "22aefe09095a528ff9f9f569475363f3cc85d63bbe8137a7cdd72f064ac93965"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/musukvl/azkv/releases/download/v1.2.0/azkv-1.2.0-linux-x64.tar.gz"
      sha256 "ef070a2082e6bd02d95a2e3c8fefa6cf2fff93e797d0ab7dea90e332f8cfb913"
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
