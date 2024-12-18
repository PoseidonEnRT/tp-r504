#!/bin/bash
docker run -d \
--mount type=bind,src="$(pwd)",dst=/srv/ \
-p 5000:5000 \
--name tp4-app \
--network net-tp4 \
im-tp4