# Define a default recipe
default:
    @just dev

dev:
    nix-shell -p zola --run "zola serve"
