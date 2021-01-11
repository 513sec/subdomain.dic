```
❯ make && wc -l subdomain.dic
cat src/*.dic | sort | uniq \
	| sed '/^$/d' \
	| sed '/[^a-z0-9-]/d' \
	| sed '/^.\{12,\}$/d' \
	| sed '/^[[:digit:]]\{8,\}$/d' \
	> subdomain.dic
   83302 subdomain.dic
```
