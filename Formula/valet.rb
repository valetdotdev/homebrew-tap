class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.25"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "beec5ac8ca3c2fc13ddaf76b071bcbf4e925b71582b3784a78d0d5925290bbe0"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "3af12b311ae82a544775c2bad544e985a286c17d78d6b3e3d34e709ccb6db8eb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "699d9ccc24e716a798a07e48b9e4b66a8dfa4246b6caa1888cfa60bd810c4f14"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "6624f2b3e145fcbb23793bfa13b74a8efcd0ec2247eb1ac3604e0e849bffe14f"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.25", shell_output("#{bin}/valet version")
  end
end
