class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.37"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "1a511f1626597d5f5e2cf6560acd9fbac4078b7ebd3f038790e812881d2a4882"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "98445f36719ede8f4a4d3241f04a4c8854dd21f402d2d03a1da3ad1ab2b2dfee"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "898b034f9b5f67c7e22d06cfa74751f576066a260ee71602ef310bb22dde960d"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "07dc475b5c5abe06127869f96683408faeab5cb09fb176783be5ef3010ba5d91"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.37", shell_output("#{bin}/valet version")
  end
end
