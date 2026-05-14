class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.52"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "73459b5cf248e6d35d7b0867e705dd9482390a5c660899be2fe6fe92d2dd9464"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "66757deefe3b61bc0c9a750246475cce37167119faee2d0592050f87dd0d74b0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "c66e9cfd1421b366db867299d1e331409a49bb014e5018791e933e96f200bd74"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "092349e7ab7a1dd2267e5bc80f6be95a767ff58fcde9413b274b7e7038165f6f"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.52", shell_output("#{bin}/valet version")
  end
end
