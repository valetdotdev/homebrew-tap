class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.84"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "79287977ed10a1d501595dce29584d91afbc70125b8d7927ec7dcb64ea5fa425"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "255294b8ed0d97148387249fe2df7fb5be89589d642d9d3208840a39c8744b37"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "d2ff1187eca094d05d508dbe22d43166550ce1baeed29e63b8de012919b0b581"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "55634961173a17851cf5e2cdc9b7cbc71cbd0f3f8f7dffdeaeeba3b2789613b3"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.84", shell_output("#{bin}/valet version")
  end
end
