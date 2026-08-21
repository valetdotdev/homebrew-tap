class Valet < Formula
  desc "Valet runs your agents"
  homepage "https://valet.dev"
  version "0.1.81"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-arm64.tar.gz"
      sha256 "e9883236d5a262a391682def68af731dcaf2f841caad8aa3235a2a300f328a65"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-darwin-amd64.tar.gz"
      sha256 "28bd0bc0b9afabd7768cad062d73bb1b363f2293ca36506c90ccedcadff8a9ad"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-arm64.tar.gz"
      sha256 "3e5a2be157063e5eac4f0e1dfc2a080db82cc99ea34910a48ec8513b192ff52e"
    else
      url "https://github.com/valetdotdev/homebrew-tap/releases/download/valet-cli-v#{version}/valet-cli-#{version}-linux-amd64.tar.gz"
      sha256 "7f46ca90d9e799d80c5670c616066ba45d570fe5fd77db0b98cccfc1cf49608e"
    end
  end

  def install
    bin.install "valet"
  end

  test do
    assert_match "0.1.81", shell_output("#{bin}/valet version")
  end
end
