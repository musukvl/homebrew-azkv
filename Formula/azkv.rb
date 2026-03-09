class Azkv < Formula
  desc "Terminal UI for managing Azure Key Vaults"
  homepage "https://github.com/musukvl/azkv"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/musukvl/azkv/releases/download/v1.1.0/azkv-1.1.0-osx-arm64.tar.gz"
      sha256 "e23d7c4f57958b222f1760603fe77cfdfeb81598272fc8c1286c5a65ff597131"
    end
    on_intel do
      url "https://github.com/musukvl/azkv/releases/download/v1.1.0/azkv-1.1.0-osx-x64.tar.gz"
      sha256 "19aa38dab1880211408a57c317747cafe4a2558b0515b2b650d5ee25d723b6ce"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/musukvl/azkv/releases/download/v1.1.0/azkv-1.1.0-linux-x64.tar.gz"
      sha256 "13a4a4bfa84385c9e5c900913f5213bc1c5eaefc8195a09785c6c1163bbdc650"
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
