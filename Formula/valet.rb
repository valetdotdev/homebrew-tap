class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.109"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "0b39df72c8384baf16884d4877b238feb14e77cc4c3634b1d6ff366359b430b8"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "fc26a01e8c411988d8645d8c1b6ce3246d53da24eeb7fc8a12748fa5f955654b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "440d77ceeaf1ac49276ba2ffff91c08710316df8c54482b8091da1989378b244"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "0a357a0a6fdf4565794324183543b094a83c146b952fd266dcb7a092183ad175"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.109", shell_output("#{bin}/valet version")
  end
end
