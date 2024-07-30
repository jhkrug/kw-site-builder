local:
	mkdir -p tmp
	npx antora --log-format=pretty kw-local-playbook.yml | tee tmp/build.log 2>&1

netlify:
	mkdir -p tmp
	npm install && npm update
	npx antora --log-format=pretty kw-netlify-playbook.yml

gen_nav:
	bin/gen_kw_nav
