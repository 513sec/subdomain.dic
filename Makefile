all:
	cat src/*.dic | sort | uniq \
	| sed '/^$$/d' \
	| sed '/[^a-z0-9-]/d' \
	| sed '/^.\{12,\}$$/d' \
	| sed '/^[[:digit:]]\{8,\}$$/d' \
	> subdomain.dic

