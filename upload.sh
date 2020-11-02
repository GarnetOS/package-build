setup_git() {
  git config --global user.email "travis@travis-ci.org"
  git config --global user.name "Travis CI"
   # Remove existing "origin"
  git remote rm origin
  # Add new "origin" with access token in the git URL for authentication
  git remote add origin https://radimkohout:${GITHUB_TOKEN}@github.com/GarnetOS/packages.git > /dev/null 2>&1
  git pull origin master --quiet
}

commit_country_json_files() {
  git checkout master
  # Current month and year, e.g: Apr 2018
  # Stage the modified files in dist/output
  git add -f $PACK
  # Create a new commit with a custom build message
  # with "[skip ci]" to avoid a build loop
  # and Travis build number for reference
  git commit -m "Added $PACK"
}

upload_files() {
  git push origin master --quiet
}

setup_git

commit_country_json_files

# Attempt to commit to git only if "git commit" succeeded
if [ $? -eq 0 ]; then
  echo "A new commit with changed country JSON files exists. Uploading to GitHub"
  upload_files
else
  echo "No changes in country JSON files. Nothing to do"
fi
