class Azkv < Formula
  desc "Terminal UI for managing Azure Key Vaults"
  homepage "https://github.com/musukvl/azkv"
  version "1.0.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/musukvl/azkv/releases/download/v1.0.4/azkv-1.0.4-osx-arm64.tar.gz"
      sha256 "f07ef170fd133e52d122caee2783950cb0d6d0ca561262f538608abb51317f21"
    end
    on_intel do
      url "https://github.com/musukvl/azkv/releases/download/v1.0.4/azkv-1.0.4-osx-x64.tar.gz"
      sha256 "013aeca71ae07ad43cc79175e32dec1c0a61dd5fad65bc775a47779178b6c85a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/musukvl/azkv/releases/download/v1.0.4/azkv-1.0.4-linux-x64.tar.gz"
      sha256 "6ccaa923ab535838c1037ca3e7d45c80d0483351790b5c7a2d508db805bdee20"
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
