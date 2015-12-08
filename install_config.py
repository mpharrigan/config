#!/usr/bin/env python3

# This is a WIP. Ultimately will replace setup.sh with something more robust.

from datetime import datetime
from pathlib import Path

assert Path(".") == Path("~/config").expanduser(), "Please enter the config directory."

backup = Path(".") / datetime.now().isoformat()
backup.mkdir()


