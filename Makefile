.PHONY: init
init:
	git submodule update --init
	@rm -rf Clash
	cp -rf ACL4SSR/Clash .
	cp -rf Custom/Clash .
	sed -i 's|/ACL4SSR/ACL4SSR/|/starudream/sub-rule/|g' Clash/config/*.ini
