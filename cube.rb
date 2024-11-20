class Cube < Formula
    desc "A cute spinning cube for your terminal!"
    homepage "https://github.com/aa830/cube.c"
    url "https://github.com/aa830/homebrew-cube.c/archive/refs/tags/v0.0.1.tar.gz"
    sha256 "c894fc542af8e650d873601c2068f03c3a7c20add2e272b0a12a60726cbb6b8c"
    version "v0.0.1"
  
    def install
      # Compile the project using `make`
      system "make"  # Ensure a `Makefile` exists in the project root directory
  
      # Install the compiled binary to Homebrew's bin directory
      bin.install "cube"
    
    end
  
    test do
      # Simple test to verify the installation
      system "#{bin}/cube", "--help"
    end
  end