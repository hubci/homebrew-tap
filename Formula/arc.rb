# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Arc < Formula
  desc "A helpful CircleCI and GitHub tool."
  homepage "https://github.com/hubci/arc"
  version "0.8.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hubci/arc/releases/download/v0.8.1/arc-v0.8.1-macos-arm64.tar.gz"
      sha256 "0ac54b94ea7b5a65bafe0a1dc641f69e63c94b6a6a1816937dc6ba69a8c0cfaa"

      def install
        bin.install "arc"
        bash_completion.install "completions/arc.bash" => "arc"
        fish_completion.install "completions/arc.fish"
        zsh_completion.install "completions/arc.zsh" => "_arc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hubci/arc/releases/download/v0.8.1/arc-v0.8.1-macos-amd64.tar.gz"
      sha256 "beb2637cab534eea1a12558150e1aca19cc2c7df4ae224edc5b6369fb239bb75"

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
      url "https://github.com/hubci/arc/releases/download/v0.8.1/arc-v0.8.1-linux-arm64.tar.gz"
      sha256 "1faecc6a2a362e712dde29cbba517da9566f1ae76583e509e840525e003da468"

      def install
        bin.install "arc"
        bash_completion.install "completions/arc.bash" => "arc"
        fish_completion.install "completions/arc.fish"
        zsh_completion.install "completions/arc.zsh" => "_arc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hubci/arc/releases/download/v0.8.1/arc-v0.8.1-linux-amd64.tar.gz"
      sha256 "83c9421d872d88c056347386a193f25415efbdee6f712d9d9f82e5f1ec4f3cf1"

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
