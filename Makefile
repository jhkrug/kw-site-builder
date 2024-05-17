local:
	mkdir -p tmp
	npx antora --log-format=pretty kw-local-playbook.yml > tmp/build.log 2>&1

netlify:
	mkdir -p tmp
	npm -g install
	antora --log-format=pretty kw-netlify-playbook.yml > tmp/build.log 2>&1

gen_nav:
	bin/gen_kw_nav
