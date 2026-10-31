class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.104"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "df170b44ed8c409a706161c12b41a797999bf871464ff3d2e9144e399cc29d89"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "277a31dceba419763037d06b838ce3b7e7a1d958ff23e4daf24267b34af7c211"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "c4514039d3d549e8d7526ce65cd106fe603a4fb315dd0153704d9a089e48ae4f"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "9a757d1174f0a9c84d3c47f2c36a11b11fdf470af485ac06bf16a640628c1f67"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.104", shell_output("#{bin}/valet version")
  end
end
