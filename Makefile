package = github.com/matburnham/ogn-init
export FILES=cmdline.txt ssh ogn-init appliance

.PHONY: release

release: release.zip

release.zip: ogn-init
	zip -r release.zip ${FILES}

ogn-init:
	mkdir -p release
	GOOS=linux GOARCH=arm go build -o release/ogn-init projects.bytemark.co.uk/pi-init2