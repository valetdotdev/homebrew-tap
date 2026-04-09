class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.28"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "5ecbdde713f8a3bfe6661431d4603a0929890fc202bd18e25dd922393822675b"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "485d2be786557f70f5d44ca49ff59682b2f634182b2dda6d8232ce106804cce9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "65363b491371b620752b823ba70619c529c75c1d483ede5800616d0054c2c24c"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "eca17c465007a18fd7f33bd0d4966e8790ac837318f5729a0315596e978ad42a"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.28", shell_output("#{bin}/valet version")
  end
end
