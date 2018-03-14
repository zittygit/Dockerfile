#!/bin/bash
/bin/upload/upload &
/bin/gotty --port 8000 --permit-write --reconnect /bin/bash