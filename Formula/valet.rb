class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.118"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "21273fd01d179a42b8d82fd448b23ca541c86acc74495884ddd9a9bac1238e3e"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "b2b63ef095031d24aea5152504bbba278a811dbad0b8d7a06be7d31eabbef86e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "22f7eeb2981733491a197f582615121fce0b2a7e7e4dcf5349053146231c5f42"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "1e8fc832fa5b206b78245061023baebfa13b852b048e89d17e5023b21776fd4a"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.118", shell_output("#{bin}/valet version")
  end
end
