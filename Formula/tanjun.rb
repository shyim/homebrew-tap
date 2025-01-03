# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tanjun < Formula
  desc "Simple Dockerized Deployment"
  homepage "https://shyim.me"
  version "0.0.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shyim/tanjun/releases/download/0.0.10/tanjun_Darwin_x86_64.tar.gz"
      sha256 "8a569ffd7eb95d8e011005c38dda91fa49b0e1d43a632c925ced8b99d82d990c"

      def install
        bin.install "tanjun"
        bash_completion.install "completions/tanjun.bash" => "_tanjun"
        zsh_completion.install "completions/tanjun.zsh" => "_tanjun"
        fish_completion.install "completions/tanjun.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shyim/tanjun/releases/download/0.0.10/tanjun_Darwin_arm64.tar.gz"
      sha256 "76c735c26facf14e9169df974b21c1dd0fc4c034c218b0eeb664a5fdabfbbc9e"

      def install
        bin.install "tanjun"
        bash_completion.install "completions/tanjun.bash" => "_tanjun"
        zsh_completion.install "completions/tanjun.zsh" => "_tanjun"
        fish_completion.install "completions/tanjun.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/shyim/tanjun/releases/download/0.0.10/tanjun_Linux_x86_64.tar.gz"
        sha256 "339aa25dbeb784e373b05059bdae13b658aaf816b572628d744395a1757b2ccf"

        def install
          bin.install "tanjun"
          bash_completion.install "completions/tanjun.bash" => "_tanjun"
          zsh_completion.install "completions/tanjun.zsh" => "_tanjun"
          fish_completion.install "completions/tanjun.fish"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/shyim/tanjun/releases/download/0.0.10/tanjun_Linux_arm64.tar.gz"
        sha256 "a9b466ad035f7b583602947e7e39c5ffeb7525d091150312d391c5bfa6679824"

        def install
          bin.install "tanjun"
          bash_completion.install "completions/tanjun.bash" => "_tanjun"
          zsh_completion.install "completions/tanjun.zsh" => "_tanjun"
          fish_completion.install "completions/tanjun.fish"
        end
      end
    end
  end

  test do
    system "#{bin}/tanjun --version"
  end
end
