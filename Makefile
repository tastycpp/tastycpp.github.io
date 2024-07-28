# More details on how to pair TailwindCSS with Hugo is here:
#
#   https://bshelling.medium.com/designing-for-speed-and-simplicity-tailwind-css-and-hugo-the-perfect-pair-da21f3506942
#

.PHONY: build css serve

serve:
	./bin/hugo.exe server --buildDrafts -d build
build:
	rm build -rf && ./bin/hugo.exe -d build

css:
	./bin/tailwindcss.exe -i main.css -o static/css/main.css --watch --content "layouts/**/*.html"
