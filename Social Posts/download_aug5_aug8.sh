#!/bin/bash
# Dex-Link — Aug 5 & Aug 8 carousel downloads
# Generated: Jul 17, 2026 — tokens expire Jul 21, 2026 (run this within a few days!)
# Usage: bash download_aug5_aug8.sh

BASE="$(cd "$(dirname "$0")" && pwd)"

echo "🔽 Downloading Aug 5 + Aug 8 carousel images..."
echo "Saving to: $BASE"
echo ""

fail=0
pass=0

dl() {
  local url="$1"
  local dest="$2"
  local label="$3"
  curl -sL --max-time 30 "$url" -o "$dest"
  size=$(stat -f%z "$dest" 2>/dev/null || stat -c%s "$dest" 2>/dev/null)
  if [ "$size" -gt 10000 ]; then
    echo "  ✅ $label ($(du -h "$dest" | cut -f1))"
    ((pass++))
  else
    echo "  ❌ FAILED: $label (only $size bytes — likely expired/error)"
    rm -f "$dest"
    ((fail++))
  fi
}

mkdir -p "$BASE/2026/August"

echo "📁 August 5 — IP Camera vs Analogue CCTV carousel"

dl "https://pikaso.cdnpk.net/private/production/4662474766/render.png?token=exp=1784592000~hmac=98c49a25769fa45cfc85366e27fdd5d62da0bc033901431a06715ebc0babafec" \
   "$BASE/2026/August/2026-08-05_IP-Camera-vs-Analogue_Slide1-Title.png" \
   "Slide 1 — Title"

dl "https://pikaso.cdnpk.net/private/production/4662475042/render.png?token=exp=1784592000~hmac=771e3af3e358458a35e023af9c0f4aca16253bcd274848f036b014fddfa85c8f" \
   "$BASE/2026/August/2026-08-05_IP-Camera-vs-Analogue_Slide2-IPCamera.png" \
   "Slide 2 — IP Camera"

dl "https://pikaso.cdnpk.net/private/production/4662475566/render.png?token=exp=1784592000~hmac=2de24fbe93e56cafda442d11dfd9a808dce0b1d25cc82587d84a03c6497e3665" \
   "$BASE/2026/August/2026-08-05_IP-Camera-vs-Analogue_Slide3-Analogue.png" \
   "Slide 3 — Analogue"

dl "https://pikaso.cdnpk.net/private/production/4662475776/render.png?token=exp=1784592000~hmac=b86242aca2cc16f8ac01d5f875846cf6626adf247ef2b15cbb6ded4af02b021e" \
   "$BASE/2026/August/2026-08-05_IP-Camera-vs-Analogue_Slide4-Verdict.png" \
   "Slide 4 — Verdict"

echo ""
echo "📁 August 8 — UPS FAQ carousel"

dl "https://pikaso.cdnpk.net/private/production/4662475416/render.png?token=exp=1784592000~hmac=287d7512ad27e108d15dc6bcf0727ed646c6c3301e7af6a8480c923336bb6ee8" \
   "$BASE/2026/August/2026-08-08_UPS-FAQ_Slide1-Title.png" \
   "Slide 1 — Title"

dl "https://pikaso.cdnpk.net/private/production/4662475548/render.png?token=exp=1784592000~hmac=b68ab4e993c67a20e176301035bb8b375263d09e033914d25132317b26d8bf13" \
   "$BASE/2026/August/2026-08-08_UPS-FAQ_Slide2-WhatUPSDoes.png" \
   "Slide 2 — What UPS Does"

dl "https://pikaso.cdnpk.net/private/production/4662475642/render.png?token=exp=1784592000~hmac=026743bf83a595aed50c09aabdfc54514bc0996599852db5c551e77f449961b3" \
   "$BASE/2026/August/2026-08-08_UPS-FAQ_Slide3-SignsYouNeedOne.png" \
   "Slide 3 — Signs You Need One"

dl "https://pikaso.cdnpk.net/private/production/4662476873/render.png?token=exp=1784592000~hmac=422dd981307dfc38c197783071272330d918ff6bf47df17467f8b6ebea732705" \
   "$BASE/2026/August/2026-08-08_UPS-FAQ_Slide4-CTA.png" \
   "Slide 4 — CTA"

echo ""
echo "────────────────────────────"
echo "✅ Downloaded: $pass files"
if [ $fail -gt 0 ]; then
  echo "❌ Failed: $fail files (ask Claude to refresh URLs if this happens)"
fi
