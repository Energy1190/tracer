#!/bin/bash

if [ -z "$1" ]; then
  confd -backend="env" -confdir="/app" -onetime  --log-level=debug && \
  /ts/startJetty
else
  $@
fi