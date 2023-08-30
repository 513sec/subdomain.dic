all:
	cat src/*.dic | sort -u \
	| sed '/^$$/d' \
	| sed '/[^a-z0-9-]/d' \
	| sed '/^.\{12,\}$$/d' \
	| sed '/^[[:digit:]]\{8,\}$$/d' \
	> subdomain.dic
	wc -l subdomain.dic

