class Azkv < Formula
  desc "Terminal UI for managing Azure Key Vaults"
  homepage "https://github.com/musukvl/azkv"
  version "1.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/musukvl/azkv/releases/download/v1.2.1/azkv-1.2.1-osx-arm64.tar.gz"
      sha256 "3830002c4db97346edd39846b752c1eb70c9370eba7f6c5581524d8878136af6"
    end
    on_intel do
      url "https://github.com/musukvl/azkv/releases/download/v1.2.1/azkv-1.2.1-osx-x64.tar.gz"
      sha256 "e18adb4367a400da7aa69a86fc33f2bf0a86495ada7e9b65456f417c48a8bfed"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/musukvl/azkv/releases/download/v1.2.1/azkv-1.2.1-linux-x64.tar.gz"
      sha256 "1bc91d207fe7672958d6710e80650f061e2cd72122e8c113bf932665342a1380"
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
