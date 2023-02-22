# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Arc < Formula
  desc "A helpful CircleCI and GitHub tool."
  homepage "https://github.com/hubci/arc"
  version "0.10.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hubci/arc/releases/download/v0.10.0/arc-v0.10.0-macos-arm64.tar.gz"
      sha256 "0b2ec654eea47cef30551eb5790d8e0c3b77710e6abe53434b3e0cd737f345d3"

      def install
        bin.install "arc"
        bash_completion.install "completions/arc.bash" => "arc"
        fish_completion.install "completions/arc.fish"
        zsh_completion.install "completions/arc.zsh" => "_arc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hubci/arc/releases/download/v0.10.0/arc-v0.10.0-macos-amd64.tar.gz"
      sha256 "9f01c4fd63b9d2250d2a7fbc997280f8bf8d6ac0f736b054e2c0f119afefc771"

      def install
        bin.install "arc"
        bash_completion.install "completions/arc.bash" => "arc"
        fish_completion.install "completions/arc.fish"
        zsh_completion.install "completions/arc.zsh" => "_arc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hubci/arc/releases/download/v0.10.0/arc-v0.10.0-linux-arm64.tar.gz"
      sha256 "c18a8b9e369493531a26301450b2caf9021fba71eb995965bd3fe3263a72ae0f"

      def install
        bin.install "arc"
        bash_completion.install "completions/arc.bash" => "arc"
        fish_completion.install "completions/arc.fish"
        zsh_completion.install "completions/arc.zsh" => "_arc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hubci/arc/releases/download/v0.10.0/arc-v0.10.0-linux-amd64.tar.gz"
      sha256 "476a60726251aa961a7786c603167ea2a2dc943f66a9bc25c1e9115848fd512b"

      def install
        bin.install "arc"
        bash_completion.install "completions/arc.bash" => "arc"
        fish_completion.install "completions/arc.fish"
        zsh_completion.install "completions/arc.zsh" => "_arc"
      end
    end
  end

  test do
    system "#{bin}/arc", "help"
  end
end
