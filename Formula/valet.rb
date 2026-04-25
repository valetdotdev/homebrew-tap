class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.36"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "ccfe5bbab2275deeed06acb8c928fffae76333f5a953be0b60264281753ddc63"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "a05e7a94d3bf73a68389d9875fd77a8cd82bafa67bc849360d3fb1c3bb62027a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "68e7a85a1313a4c00702e0f85397af03a10dc8db4755f5c54472ce141d9bd5f3"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "0a13dbc77f8a5af66c86acdfb9d5ffb97ae74514e73759a8a1f69db1b514a217"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.36", shell_output("#{bin}/valet version")
  end
end
