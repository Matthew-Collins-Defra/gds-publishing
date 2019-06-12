#!/usr/bin/env sh
docker build -t frontend ../publishing/frontend/
docker build -t content-store ../publishing/content-store/
docker build -t static ../publishing/static/
docker build -t publisher ../publishing/publisher/
docker build -t publishing-api ../publishing/publishing-api/
docker build -t calculators ../publishing/calculators/
docker build -t calendars ../publishing/calendars/
