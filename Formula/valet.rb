class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.108"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "a3bc3dca61eb750a611517a578513c301220f1b73ea5c69a3ad555466845d28f"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "8afe974467c7b9399a98d632e052f0f7df930cf853eabb5fd19d2cf0b923d05f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "8ea779ff680fcd486a3f0ed95778d5658f0e1de7c21d7ad888072f628384ef20"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "ac3f48ad676ec86937031de31c86f1b09975384debdb22a90c2e5ccd996bfaaa"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.108", shell_output("#{bin}/valet version")
  end
end
