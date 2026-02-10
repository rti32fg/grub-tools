..
   SPDX-License-Identifier: AGPL-3.0-or-later

   ----------------------------------------------------------------------
   Copyright © 2024, 2025, 2026  Pellegrino Prevete

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


=================
mkgrub
=================

--------------------------------------------------------------
Make Grub
--------------------------------------------------------------
:Version: mkgrub |version|
:Manual section: 1


Synopsis
========

mkgrub *[options]* *out*


Description
===========

Produces a GRUB bootloader.


Arguments
============

- *out*                 Output directory or GRUB binary path.
                        It defaults to './BOOT<arch-code>.<platform>'.


Options
=======

-C grub-cfg              Whether to use a specific configuration
                         file to embed in GRUB.
-g                       Pass to auto-generate a configuration
                         file using mkgrubcfg.
-p                       Whether a plain text configuration file
                         in the GRUB binary directory is used
                         rather than be embedded in the binary.
-b boot-method           Boot method ('mbr', 'eltorito', 'efi').
-a arch-name             Architecture ('aarch64', 'arm', 'armv7h',
                                       'armv6', 'i386', 'x86_64')
-r                       Disable configuration file integrity
                         check.


mkgrubcfg options:
=====================

-L entry-name           Sets an alternative entry name
-l short-name           Short entry name.
-U fsuuid               Add an UUID for an encrypted boot disk.
-u fsuuid               Add an UUID for an unencrypted boot disk.
-K kernel               Add the path of a kernel inside a boot disk.
-k kernel-sum           SHA256 sums of the kernel.
-I initrd               Path of the initrd inside the
                        boot disks.
-i initrd-sum           SHA256 sum of the initrd.
-e boot-key             Path of the encryption key inside
                        the boot disk.
                        Set to "" for unencrypted disks.


Application options
=====================

-h                      Display help.
-c                      Enable color output
-v                      Enable verbose output


Bugs
====

https://github.com/themartiancompany/grub-tools/-/issues


Copyright
=========

Copyright Pellegrino Prevete. AGPL-3.0.

See also
========

* evm-contract-deployer-get
* evm-contract-deployment-address
* evm-contract-deployments-dir
* evm-contract-deployment-networks
* evm-contract-deployment-versions
* evm-contracts-abi-get
* evm-wallet

.. include:: variables.rst
