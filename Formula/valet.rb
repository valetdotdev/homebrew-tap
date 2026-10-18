class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.91"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "c79594ce906109f959315d33680a6b9556c33accc581cb17a17c958ceceb8c37"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "6b8a5b6461bd1dad55d1dbd9527bddbf095ca2f22dd0014002a0640f86c271b9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "fc74ba3ac546f00c9205bb2aa286f305911afaa2b4e03d23f23af9e5d735177e"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "d8e3475efc9b54774f1a3e6521250351ede82416230145b39edb633beea26400"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.91", shell_output("#{bin}/valet version")
  end
end
