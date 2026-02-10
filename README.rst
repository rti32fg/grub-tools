..
   SPDX-License-Identifier: AGPL-3.0-or-later

   ----------------------------------------------------------------------
   Copyright © 2023, 2024, 2025, 2026  Pellegrino Prevete

   All rights reserved
   ----------------------------------------------------------------------

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU Affero General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU Affero General Public License for more details.

   You should have received a copy of the GNU Affero General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.

============
GRUB Tools
============

The GRUB tools are `mkgrub` and
`mkgrubcfg`.

The first produces a GRUB bootloader
very easily, the second produces
valid configurations for use by
the first.


Requirements
============

Clearly GRUB is required to run `mkgrub`.

The  `Crash Bash <https://github.com/themartiancompany/crash-bash>`_
is also a dependency.

For linting the programs the following package is required:

* shellcheck

Installation
============

To install `mkgrub` system-wide use the included ``Makefile``:

.. code:: sh

   make \
     install

Optional features

Contribute
==========

Development of mkgrub takes place on Arch
Linux' Gitlab: https://gitlab.archlinux.org/archlinux/arch-grub.

Please read our distribution-wide `Code of Conduct <https://wiki.archlinux.org/title/Code_of_conduct>`_ before
contributing, to understand what actions
will and will not be tolerated.

Read our `contributing guide <CONTRIBUTING.rst>`_ to learn more about how to provide fixes or improvements for the code
base.

All past and present authors of archiso are listed in `AUTHORS <AUTHORS.rst>`_.

License
=======

Arch-grub is licensed under the terms of the **AGPL-3.0-or-later** (see `LICENSE <LICENSE>`_).
