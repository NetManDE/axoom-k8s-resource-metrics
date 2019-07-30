#!/bin/sh
socat TCP-LISTEN:80,fork SYSTEM:./response.sh
