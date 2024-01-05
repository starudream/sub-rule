.PHONY: init
init:
	git submodule update --init

.PHONY: update
update:
	git submodule update --remote

.PHONY: dist
dist:
	@rm -rf Clash
	cp -rf ACL4SSR/Clash .
	cp -rf Custom/Clash .
	sed -i 's|/ACL4SSR/ACL4SSR/|/starudream/sub-rule/|g' Clash/config/*.ini
	#sed -i 's|https://raw.githubusercontent.com/starudream/sub-rule/master/|https://cdn.jsdelivr.net/gh/starudream/sub-rule/|g' Clash/config/*.ini
	bash gen_readme.sh
