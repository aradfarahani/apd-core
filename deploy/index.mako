Awesome Public Datasets
=======================

.. image:: https://cdn.rawgit.com/sindresorhus/awesome/d7305f38d29fed78fa85652e3a63e154dd8e8829/media/badge.svg
   :alt: Awesome
   :target: https://github.com/sindresorhus/awesome

This is a list of `topic-centric public data sources <https://github.com/awesomedata/awesome-public-datasets>`_
in high quality. They are collected and tidied from blogs, answers, and user responses.
Most of the data sets listed below are free, however, some are not.
This project was incubated at `OMNILab <https://github.com/OMNILab>`_, Shanghai Jiao Tong University during Xiaming Chen's Ph.D. studies.
OMNILab is now part of the `BaiYuLan Open AI community <https://github.com/Bai-Yu-Lan>`_.
Other amazingly awesome lists can be found in `sindresorhus's awesome <https://github.com/sindresorhus/awesome>`_ list.

**NOTICE**: This repo is automatically generated by `apd-core <https://github.com/awesomedata/apd-core/tree/master/core>`_.
Please **DO NOT** modify this file directly. We have provided a new way to `contribute to 
this repo <https://github.com/awesomedata/apd-core/blob/master/CONTRIBUTING.md>`_. 
`Join <https://join.slack.com/t/awesomedataworld/shared_invite/zt-dllew5xy-PJYi~mWUdY3hupohbmVZsA>`_ 
the `slack community <https://awesomedataworld.slack.com>`_ for an instant touch of HQ data updates.

.. |OK_ICON| image:: https://raw.githubusercontent.com/awesomedata/apd-core/master/deploy/ok-24.png
.. |FIXME_ICON| image:: https://raw.githubusercontent.com/awesomedata/apd-core/master/deploy/fixme-24.png

* |OK_ICON| I am well.
* |FIXME_ICON| Please fix me.

.. contents:: **Table of Contents**

% for category, data_entries in categories.items():
    <%
        underline = len(category) * '-'
    %>
${category}
${underline}
    % for entry in data_entries:
        <%
            import textwrap

            title = entry['title']
            description = entry.get('description')
            link = entry['homepage']
            raw_file_name = entry.pop('_rawFileName', None)

            if description is not None:
                ex_title = textwrap.shorten('{} - {}'.format(title, description), width=max(len(title), 99))
            else:
                ex_title = title

            _status = entry.pop('_status', False)

            OK = '|OK_ICON|'
            FIXME = '|FIXME_ICON|'

            status = OK if _status else FIXME

            if raw_file_name is not None:
                core_prefix = 'https://github.com/awesomedata/apd-core/tree/master/core/'
                fixme_link = '{}/{}/{}'.format(core_prefix, category, raw_file_name)
            else:
                fixme_link = None
        %>
        % if fixme_link is not None:
* ${status} `${ex_title} <${link}>`_ [`Meta <${fixme_link}>`_]
        % else:
* ${status} `${ex_title} <${link}>`_
        % endif
    % endfor
% endfor


Complementary Collections
-------------------------

* `Data Packaged Core Datasets <https://github.com/datasets/>`_

* OpenDataMonitor: `An overview of available open data resources in Europe <https://opendatamonitor.eu/frontend/web/index.php?r=dashboard%2Findex>`_

* Quora: `Where can I find large datasets open to the public? <https://www.quora.com/Where-can-I-find-large-datasets-open-to-the-public>`_

* RS.io: `100+ Interesting Data Sets for Statistics <https://rs.io/100-interesting-data-sets-for-statistics/>`_

* CVonline: `Image Databases <https://homepages.inf.ed.ac.uk/rbf/CVonline/>`_

* InnoTrek: `Leveraging open data to understand urban lives <https://web.archive.org/web/20210427004644/http://caesar0301.github.io/posts/2014/10/23/leveraging-open-data-to-understand-urban-lives/>`_

* CV Papers: `CV Datasets on the web <https://web.archive.org/web/20180318042653/http://cvpapers.com/datasets.html>`_

Special thanks to

.. image:: https://raw.githubusercontent.com/awesomedata/apd-core/master/logo/baiyulan.PNG
   :alt: BaiYuLanAI
   :target: https://github.com/Bai-Yu-Lan


