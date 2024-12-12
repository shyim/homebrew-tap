# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tanjun < Formula
  desc "Simple Dockerized Deployment"
  homepage "https://shyim.me"
  version "0.0.7"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/shyim/tanjun/releases/download/0.0.7/tanjun_Darwin_x86_64.tar.gz"
      sha256 "abd21174726db40d900f6c8ed108880391ca898671fd6df38727ea6c2a0b777e"

      def install
        bin.install "tanjun"
        bash_completion.install "completions/tanjun.bash" => "_tanjun"
        zsh_completion.install "completions/tanjun.zsh" => "_tanjun"
        fish_completion.install "completions/tanjun.fish"
      end
    end
    on_arm do
      url "https://github.com/shyim/tanjun/releases/download/0.0.7/tanjun_Darwin_arm64.tar.gz"
      sha256 "d7545b9786f7d6407b82a8a3322bc273d54cd6d89601d9f549c2e91d74fdab1e"

      def install
        bin.install "tanjun"
        bash_completion.install "completions/tanjun.bash" => "_tanjun"
        zsh_completion.install "completions/tanjun.zsh" => "_tanjun"
        fish_completion.install "completions/tanjun.fish"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/shyim/tanjun/releases/download/0.0.7/tanjun_Linux_x86_64.tar.gz"
        sha256 "803fbb1ac94ff5fec60c0c3eaddb5c79da74098075694ddbf4257d3af0338a1e"

        def install
          bin.install "tanjun"
          bash_completion.install "completions/tanjun.bash" => "_tanjun"
          zsh_completion.install "completions/tanjun.zsh" => "_tanjun"
          fish_completion.install "completions/tanjun.fish"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/shyim/tanjun/releases/download/0.0.7/tanjun_Linux_arm64.tar.gz"
        sha256 "1f3a7ba769581375d9f41fcf50f16632eadf1b2f41d1fae2314456f261157f5b"

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
