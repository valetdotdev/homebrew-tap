class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.68"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "38945b4569ac62e3547f0b5531c635bb8dd900da9cfe33dcbeb11f157c2850e8"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "d26db03933428a838c5017566708881975e72afb485a87bfbd79df87f6be1e49"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "cfcac965d4a60647f5cbc7c47db99b5be4d499c631018b4e97547d8593491f59"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "2ad76493429cdee5c75a8890b513d81058ea2b8c9dc0d8dd9003fb5bb9fb3081"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.68", shell_output("#{bin}/valet version")
  end
end
