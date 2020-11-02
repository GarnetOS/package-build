gh auth login --with-token <<< "GITHUB_TOKEN"
echo "test"
gh release upload v1.0 $PACK -R GarnetOS/packages
echo "test2"
