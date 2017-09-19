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
- [crossref](https://github.com/CrossRef/rest-api-doc/blob/master/rest_api.md), of course (license needs to be evaluated).

Each of them must be analyzed, and some means to fetch their data written.

For now, only the Wikipedia fetcher is implemented, [see the resulting list here](wikipedia.txt).

License
-------

It is possible that I'll have to generate differently-licensed datasets, and possibly an aggregated dataset with a (more restrictive) license to ensure the complete dataset has a license that complies with each of the individual licenses.
It is also possible that scipubdb ends up dismissing some sources to to their restrictive licensing.

At least for now, please consider the documentation and code files you find in this repository as licensed with an GPLv3 license.
