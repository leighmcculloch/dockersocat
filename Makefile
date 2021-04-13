update-formula:
	sed -i 's/^  sha256 .*$$/  sha256 "'"$$(shasum -a256 dockersocat | cut -d ' ' -f1)"'"/g' Formula/dockersocat.rb
	sed -i 's/^  version .*$$/  version "'"$$(git rev-list --count HEAD)".0.0'"/g' Formula/dockersocat.rb
