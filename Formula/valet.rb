class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.38"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "1e8c7b6e4986923556a0c80800e81e2175873287cd785f351826be30d5b0fa1f"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "debcd92bb960e82b72186370d454bbce5a87cfdddcd1f3d4dce4359dc473e898"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "8dab770d0f0bc9767f7e5d92bd5102a80a1ad691af6a98a1381c954a714b80ea"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "837bf15979c24974eb03c455126c0f28ddcf57f75f4bd4538fca66212022c134"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.38", shell_output("#{bin}/valet version")
  end
end
