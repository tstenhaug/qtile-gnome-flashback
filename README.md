# qtile-gnome-flashback [![LICENSE](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](http://choosealicense.com/licenses/mit/)

Allows you to use Qtile in a GNOME-Flashback session. This is essentially   [`i3-gnome-flashback`](https://github.com/deuill/i3-gnome-flashback) replacing i3 with Qtile.

This has been tested working on GNOME version **40**.

# Installation

For Ubuntu (19.10), ensure prerequisites are installed:

```
sudo apt install qtile gnome-flashback build-essential
```

Then install qtile-gnome-flashback:

```
sudo make install
```

For other distributions, clone this repository and run `make install` with root privileges.

# Notes

To understand how the files in this repo work to initialize an Qtile and GNOME session, refer to this [GNOME wiki](https://wiki.gnome.org/Projects/SessionManagement/RequiredComponents) on session management.

The default session for `Qtile-GNOME-Flashback` installs a set of configuration defaults for GSettings/dconf, e.g.:

  - Desktop icon handling is disabled for GNOME Flashback, due to incompatibilities with Qtile, and control of the root window is instead given to `gnome-control-center`, which handles setting the user-defined wallpaper, among other things.

<!---
  - Window buttons for minimize and maximize have been removed, leaving only the close button, as the former are ineffectual in i3.
-->

Setup for these configuration defaults is handled via GSettings overrides, which are described in
further detail
[here](https://help.gnome.org/admin/system-admin-guide/stable/dconf-custom-defaults.html.en) and
[here](https://help.gnome.org/admin/system-admin-guide/stable/overrides.html.en).
