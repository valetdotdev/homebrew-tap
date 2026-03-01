class ValetCli < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.16"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "12f6875421d0ac53fd395440a249901c2ff4e043e2dc30c96d5ba26d964e797c"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "6c3b8e3e552caa6e2fadd09007116234a10edf5001889cf321f7050f1d268372"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "f11f57ffcc912cde25e25b645da031dd6e245c84d66758cd034dbae109eae032"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "d278f3a7e30ddae2f06c1c34de018f8996463f7cfe6963e597f03921e2086bfd"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.16", shell_output("#{bin}/valet version")
  end
end
