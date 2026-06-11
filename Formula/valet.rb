class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.67"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "e09e0d657872a755e74e773d2063b18d9b4b718481692ea81433ce7f559a3e4c"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "72cf05c047b2290db9e9ed18c28896319006f318625f9131bd83366bff0d5658"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "57351f65a1b89bbec1db151b938ce949ba8f3a11605f6d2b9792c0fa0708a9e4"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "83a0bd587ab0c31b13ed8a4d868d21715da0104a8012205a81501ddaf989d9c4"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.67", shell_output("#{bin}/valet version")
  end
end
