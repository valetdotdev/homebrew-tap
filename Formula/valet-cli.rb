class ValetCli < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.20"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "bf48b6b44b054f996b85cc39b4675beb566333ac66945447972421fffc6d9dd5"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "28319a186c4f75d8aff9352001bacf3529124cfd83a2e925050bbd528044f9ec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "9ee369b039b5f8b8071d20963f53c9b905062e12fdf7036412356c94d5aa6541"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "70e025aef50ff5227bf3451a8bc7fe354773cafef4a7364ffebe0e7e8d8d60da"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.20", shell_output("#{bin}/valet version")
  end
end
