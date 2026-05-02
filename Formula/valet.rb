class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.46"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "529428ceb54330f1d9221dcda4821148e2d324f55a160be293ae2c9b7e1bedd0"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "4db6ae701b6d2321587abecce2a84618951854f3aff9bab40a2a3f64df44b191"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "8a0fac278e1555db236add328f2dd85433839ff1c2984d59309e10ee945fa7b8"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "9004f9cd91e8b4123cc630d65bcc61cb7d1a5bbc11a5a204c4626c0919728511"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.46", shell_output("#{bin}/valet version")
  end
end
