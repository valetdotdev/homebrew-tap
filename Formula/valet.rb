class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.92"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "28977a0be7943ee4487bff84a2ac9afc3d0c0f14ffa4212fd58a134cf13d0298"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "b361fe1d1522124c6b96f8d07cebd202accc467c3988214b39b60f25c2014ef4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "d89f5a3db21d227df245240261df84c59c2ba116b75c3799e48d8f849f93048f"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "fcf1d968a2a5dfb009b13f84ee0bb1eaa5eff5ac9e47129141623f8a639f9e16"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.92", shell_output("#{bin}/valet version")
  end
end
