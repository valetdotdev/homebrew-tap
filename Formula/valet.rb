class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.61"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "1cd243adc753f3de1aec99195841aeb99c4f4b767d72cfa10b823b261ef81848"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "0668289e95c772b67d843115f5e01258b7063c085fa28897c6c97a538d692c8e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "d7604054853bad73f02f93b35dc7c66296096ec012f911011703ad2a802f0d1b"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "ab75d85deb971daa866cbc2d7bfc7fc93d1ca004f9d3acde7d10cf796c413844"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.61", shell_output("#{bin}/valet version")
  end
end
