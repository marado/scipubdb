scipubdb
========

scipubdb -- Scientific Publishers Database

This repository aims to provide a machine-readable dataset of Scientific Publishers.
Read more about the motivation behind it [here](https://discuss.okfn.org/t/academic-scientific-publishers-dataset/2866/6).

Sources
-------

There were several sources recommended so far:
- [Wikipedia](https://en.wikipedia.org/wiki/Category:Academic_publishing_companies) provides a list of Academic publishing companies (CC-BY-SA);
- [DOAJ](https://doaj.org/api/v1/docs) (CC-BY-SA);
- [SHERPA/RoMEO](http://www.sherpa.ac.uk/romeo/journalbrowse.php) has a CC-NC-SA license to its data;
- [crossref](https://github.com/CrossRef/rest-api-doc), of course (public domain).

For now, only the Wikipedia fetcher is implemented, [see the resulting list here](wikipedia.txt). Take into account that this list still doesn't point out to the publisher's website, only its name.

License
-------

We'll have to generate differently-licensed datasets, and possibly an aggregated dataset with a (more restrictive) license to ensure the complete dataset has a license that complies with each of the individual licenses.

The documentation and code files you find in this repository as licensed with an GPLv3 license.
