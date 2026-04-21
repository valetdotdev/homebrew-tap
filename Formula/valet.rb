class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.33"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "6aacd43e37d0fb1a9a7b18b96ce737ce9edbd2c1da3e6ba5d976370cb90ab0c4"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "62ae3dd47ae57dbb33335f6a1f35972bd67997131f8fb57759bd38c9fcff2d43"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "e8b4938a8630abc84da0c760e5d7b1f0c8746ba654ebd4a99b6383e0bb2c2931"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "e2c0a56749badabcde5409321dd24bd5d3fd05268bdd56fef3f35a790f6217bc"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.33", shell_output("#{bin}/valet version")
  end
end
