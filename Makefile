.POSIX:
DESTDIR = public
HUGO_VERSION = 0.62.0

OPTIMIZE = find $(DESTDIR) -not -path "*/static/*" \( -name '*.png' -o -name '*.jpg' -o -name '*.jpeg' \) -print0 | \
		   xargs -0 -P8 -n2 mogrify -strip -thumbnail '1000>'

.PHONY: all
all: get_repository clean get build deploy

.PHONY: get_repository
get_repository:
	@echo "Getting Pages repository"
git clone https://github.com/chencanyi1997/chencanyi1997.github.io.git $(DESTDIR)

.PHONY: clean
clean:
		@echo "🎿 leaning old build"
		cd $(DESTDIR) && rm -rf *

.PHONY: build
build:
	@echo "Generating site"
	hugo --gc --minify -d $(DESTDIR)

	@echo "🧂 Optimizing images"
	$(OPTIMIZE)

.PHONY: deploy
deploy:
	@echo "🎁 Preparing commit"
	@cd $(DESTDIR) \
	&& git add . \
	&& git commit -m "🐧 CD bot is working" \
	&& git push
	@echo "✈ Site is deployed!"

.PHONY: get
get:
	@echo "❓ Checking for hugo"
	@if ! [ -x "$$(command -v hugo)" ]; then\
			echo "👴 Getting Hugo";\
			wget -q -P tmp/ https://github.com/gohugoio/hugo/releases/download/v$(HUGO_VERSION)/hugo_extended_$(HUGO_VERSION)_Linux-64bit.tar.gz;\
			tar xf tmp/hugo_extended_$(HUGO_VERSION)_Linux-64bit.tar.gz -C tmp/;\
			sudo mv -f tmp/hugo /usr/bin/;\
			rm -rf tmp/;\
			hugo version;\
	fi
