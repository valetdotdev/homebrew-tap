class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.69"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "269e10400ac1a1dc3305dbb3d2329b49e0a2505fda31dd8a912d98ba2a25c10c"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "5a7e3acb8ff971cd5313cd097b5d1acd644663c336cadbfa827727a4ea596181"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "26a214d131a3e384672057668834ceda33a74ee65d92e01560e6f6075996b28e"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "f2045d2427b0a5708c87910c6cf8b6266866f92d34a2407ddb418a3da890d775"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.69", shell_output("#{bin}/valet version")
  end
end
