gh auth login --with-token <<< "GITHUB_TOKEN"
gh release upload v1.0 $PACK -R GarnetOS/packages
