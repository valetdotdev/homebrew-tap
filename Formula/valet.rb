class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.85"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "ed3424bb39333dd97839b70e3d3fdd2ec7cf5780315e0ac75d98763b3755dc0c"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "dfc9569f95b7cd06c5a8ec5202305e4c8c925eee6f93d4e7bb0a7841f9b3c3e1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "449adac3dbe45487b8b755b2150a6465af788c0f64428666e24044584cac6154"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "0e94852b25cf032110ef3ea54d00e9477d544db8321549631a203d931bf6a4a0"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.85", shell_output("#{bin}/valet version")
  end
end
