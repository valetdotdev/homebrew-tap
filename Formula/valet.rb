class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.32"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "fc162cd4b30bce8b7d1d943d46196d77a3a7a433bf77c7e15a9c62f0888f0e20"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "ab34bbf091f5e0ecd365be576874898e43ea2fa3cb7ef759e91b56d0eb5a14da"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "4cdb9a3ffa88368b0fe03ba607271d72c2d52445cce9dfbd651ce5cb87f1b734"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "edced2aa1cbf2a137e6825a51ed1e81be8bbfa89b61ed84bf701fab274b4c2f9"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.32", shell_output("#{bin}/valet version")
  end
end
