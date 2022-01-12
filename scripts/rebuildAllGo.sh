#!/bin/bash
#
# Script to kick off rebuilding of all Go based images
#
set -euo pipefail
IFS=$'\n\t'

ACTION=( 
        "age" \
        "ali" \
        "amass" \
        "bl3auto" \
        "cloudflared" \
        "coredns" \
        "dive" \
        "dnscontrol" \
        "dnscrypt-proxy" \
        "driftctl" \
        "dry" \
        "dsq" \
        "fq" \
        "gobgp" \
        "gocannon" \
        "goplay2" \
        "gotip" \
        "hakrawler" \
        "headscale" \
        "httprobe" \
        "httpie-go" \
        "httpx" \
        "lego" \
        "logmepwn" \
        "miller" \
        "nebula" \
        "netmaker" \
        "ntfy" \
        "octosql" \
        "pwru" \
        "rclone" \
        "spicedb" \
        "subfinder" \
        "tailscale" \
        "terraform" \
        "toxiproxy" \
        "wuzz" \
)

for i in "${ACTION[@]}"
do
	gh workflow run "${i}"
done
