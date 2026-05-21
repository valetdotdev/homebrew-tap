class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.57"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "37028b07a7053d98931d80dc4995a0c2146c3215ea2f85d121a8035d00a5d600"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "7861a2a6f651b47ab037a70a26a724b6510ad9ee77e6f980ffd3b4782007f951"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "f3bfa20cd1bb050338106cb5e47dbce449496e399e1af4095360fbffcddd3cb5"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "29cbc26f9f0bd68717f43c547dfbd0c36a4fdcaff55f96c252c08e76273220fe"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.57", shell_output("#{bin}/valet version")
  end
end
