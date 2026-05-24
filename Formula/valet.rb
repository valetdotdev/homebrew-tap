class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.58"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "8ad8a65afb5f73725bc9cd1e446f695567fd00165de7e2995c9a50ec8b5ea8e0"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "cd1e2b214b89ea6f278787f24acd571025b142f561179b376d16a3590c528432"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "60dc2137d9b475c4476ce8b7913dd8acaef89adb435de3d1dbca86161d281c00"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "6d41472b3b772ed5deb47f5ef164e644247d6459077fcf0cd3fba913afe6a113"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.58", shell_output("#{bin}/valet version")
  end
end
