class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.47"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "860e4593e612a4762ffb5eda0fb15cdf0fc2698c43bce9ab257f2c5944c1b919"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "ee4f3507a327020999119a014f28b32be05546078943ee2d49c4e7200ab4bdfa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "e1423e48b6e4fbaf90cb83be5cadbc312123b6476ffa8c2b329e0c55b6d8f3aa"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "90ac3115b6ffc0139be422d03d39fe329108f231d06fc894034aa9b56524abdb"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.47", shell_output("#{bin}/valet version")
  end
end
