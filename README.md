[comment]: <> (SPDX-License-Identifier: AGPL-3.0)

[comment]: <> (-------------------------------------------------------------)
[comment]: <> (Copyright © 2024, 2025  Pellegrino Prevete)
[comment]: <> (All rights reserved)
[comment]: <> (-------------------------------------------------------------)

[comment]: <> (This program is free software: you can redistribute)
[comment]: <> (it and/or modify it under the terms of the GNU Affero)
[comment]: <> (General Public License as published by the Free)
[comment]: <> (Software Foundation, either version 3 of the License.)

[comment]: <> (This program is distributed in the hope that it will be useful,)
[comment]: <> (but WITHOUT ANY WARRANTY; without even the implied warranty of)
[comment]: <> (MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the)
[comment]: <> (GNU Affero General Public License for more details.)

[comment]: <> (You should have received a copy of the GNU Affero General Public)
[comment]: <> (License along with this program.)
[comment]: <> (If not, see <https://www.gnu.org/licenses/>.)

# bbrightnessctl

Cross-platform utility for setting the brightness.

Core component of
[SissystemD](
  https://github.com/themartiancompany/sissystemd).

## Installation

The program in this source repo
can be installed from source using GNU Make.

```bash
make \
  install
```

B-brightness control has been published officially on the
the uncensorable, undeletable
[Ur](
  https://github.com/themartiancompany/ur)
user repository and application store as
`bbrightnessctl`.
The source code is published on the
[Ethereum Virtual Machine File System](
  https://github.com/themartiancompany/evmfs)
so it can't possibly be taken down.

To install it from there just type

```bash
ur \
  bbrightnessctl
```

A censorable HTTP Github mirror of the recipe published there,
containing a full list of the software dependencies needed to run the
tools is hosted on
[bbrightnessctl-ur](
  https://github.com/themartiancompany/bbrightnessctl-ur).
Be aware the mirror could go offline any time as Github and more
in general all HTTP resources are inherently unstable and censorable.

## Documentation

The manual can be consulted with the following command

```bash
man \
  bbrightnessctl
```

## License

This program is released by Pellegrino Prevete under the terms
of the GNU Affero General Public License version 3.
