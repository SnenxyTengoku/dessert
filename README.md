# dessert &nbsp; [![image builds badge](https://github.com/SnenxyTengoku/dessert/actions/workflows/build.yml/badge.svg)](https://github.com/SnenxyTengoku/dessert/actions/workflows/build.yml) [![python-validity image builds badge](https://github.com/SnenxyTengoku/dessert/actions/workflows/build-validity.yml/badge.svg)](https://github.com/SnenxyTengoku/dessert/actions/workflows/build-validity.yml) [![containers build badge](https://github.com/SnenxyTengoku/dessert/actions/workflows/containers.yml/badge.svg)](https://github.com/SnenxyTengoku/dessert/actions/workflows/containers.yml)

custom [Atomic](https://docs.fedoraproject.org/en-US/emerging) [Fedora](https://fedoraproject.org) images built using [BlueBuild](https://blue-build.org), based on the extra works of [Universal Blue](https://universal-blue.org).

these are *personal images* built for myself. they include a *bunch* of default applications, modifications, and opinionated changes mainly for personal use that will most likely not be comfortable for anyone else out of the box.

with that said, feel free to test my images or grab anything from here if you're looking to build something yourself.

i don't provide support or anything - these are for myself, anyways. refer to the [BlueBuild documentation](https://blue-build.org/learn/getting-started/) to build something yourself! or look at [my base images](https://github.com/SnenxyTengoku/base-images) made to provide usable templates for others.

## `wuzetka`

my customized flavor based on [Fedora Kinoite](https://fedoraproject.org/atomic-desktops/kinoite) (KDE Plasma). focused on a fully personalized custom experience, themed around and based on the Catppuccin Mocha color scheme with green accent colors. given a modern look out of the box.

> [!CAUTION]
> [generating an ISO](https://blue-build.org/how-to/generate-iso/) to use to install this flavor <b>may not work or function/install correctly</b>. there is better luck installing vanilla Fedora Kinoite first then [rebasing](#installation) to this flavor afterwards.

## `mazurek`

a fully custom Fedora Atomic desktop with [niri](https://niri-wm.github.io/) and [Noctalia Shell](https://noctalia.dev/), to provide a unique scrolling experience. like wuzetka, also themed around Catppuccin Mocha with green accents.

### `wuzetka-validity`, `mazurek-validity`

their respective images, but it replaces the `fprintd` family with [python-validity](https://github.com/uunicorn/python-validity) to allow fingerprint sensors from certain devices (like the Thinkpad T480) to work.

## installation

to rebase an existing atomic Fedora installation to the latest build:

- first, rebase to the unsigned flavor, to get the proper signing keys and policies installed:
  ```
  rpm-ostree rebase ostree-unverified-registry:ghcr.io/SnenxyTengoku/<flavor>:latest
  ```
- reboot to complete the rebase:
  ```
  systemctl reboot
  ```
- then rebase to the signed flavor, like so:
  ```
  rpm-ostree rebase ostree-image-signed:docker://ghcr.io/SnenxyTengoku/<flavor>:latest
  ```
- reboot again to complete the installation!
  ```
  systemctl reboot
  ```

> [!CAUTION]
> ideally, our images prefer using bootc instead of rpm-ostree for managing deployements. if you've used rpm-ostree to install packages or otherwise have made your own modifications, chances are they will conflict with bootc until you reset/revert them.
>
> if you're already on a bootc-based installation, migrating is made easier:
> ```
> sudo bootc switch ghcr.io/SnenxyTengoku/<flavor>:latest
> ```
> then simply:
> ```
> systemctl reboot
> ```

the `latest` tag will automatically point to the latest build. that build will still always use the Fedora version specified in `recipe.yml`, so you won't get accidentally updated to the next major version.

## verification

these flavors are signed with [Sigstore](https://www.sigstore.dev/)'s [cosign](https://github.com/sigstore/cosign). you can verify the signature by downloading the `cosign.pub` file from this repo and running the following command:

```bash
cosign verify --key cosign.pub ghcr.io/SnenxyTengoku/<flavor>
```

## credits

- [BlueBuild](https://blue-build.org) and [Universal Blue](https://universal-blue.org/) for their tools, patches and various work, obviously.
- [askpng](https://github.com/askpng) for [solarpowered](https://github.com/askpng/solarpowered), inspiring this repository's structure and for their kernel scripts.