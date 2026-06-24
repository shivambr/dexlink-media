#!/bin/bash
# Dex-Link Social Media Asset Backup
# Updated: Jun 24, 2026 — tokens expire ~Jul 31, 2026
# Usage: bash download_all_assets.sh
# Run from Terminal (cd to this folder first, or drag the file into Terminal)

BASE="$(cd "$(dirname "$0")" && pwd)"

echo "🔽 Downloading Dex-Link social media assets..."
echo "Saving to: $BASE"
echo ""

fail=0
pass=0
skip=0

dl() {
  local url="$1"
  local dest="$2"
  local label="$3"
  if [ -f "$dest" ]; then
    echo "  ⏭️  $label (already exists, skipping)"
    ((skip++))
    return
  fi
  if curl -sL --max-time 30 "$url" -o "$dest"; then
    size=$(du -h "$dest" | cut -f1)
    echo "  ✅ $label ($size)"
    ((pass++))
  else
    echo "  ❌ FAILED: $label"
    ((fail++))
  fi
}

mkdir -p "$BASE/2026/June"
mkdir -p "$BASE/2026/July"
mkdir -p "$BASE/2026/August"

# ─────────────────────────────
# JUNE 2026
# ─────────────────────────────
echo "📁 June 2026"

dl "https://pikaso.cdnpk.net/private/production/4660687719/render.png?token=exp=1782518400~hmac=20be113ff1c5ffaf26f941095ec4a31551973c7d0bf8a3ccfaee401dfddf42dd" \
   "$BASE/2026/June/Jun02_Epson_EcoTank.png" \
   "Jun 2 Epson EcoTank"

dl "https://pikaso.cdnpk.net/private/production/4660687902/render.png?token=exp=1782518400~hmac=3ed75db3fa556da11b18f184586777ddb2e50e09bde8b5a7d3753331556156e1" \
   "$BASE/2026/June/Jun04_CCTV_Security.png" \
   "Jun 4 CCTV Security Systems"

dl "https://pikaso.cdnpk.net/private/production/4660687330/render.png?token=exp=1782518400~hmac=aa779ff23aff9b57d7766ebfd6c9e189c21f96adc2d580b83a7aca3bd8f3a41a" \
   "$BASE/2026/June/Jun09_5Signs_Laptop.png" \
   "Jun 9 5 Signs Laptop Needs Servicing"

echo ""

# ─────────────────────────────
# JULY 2026
# ─────────────────────────────
echo "📁 July 2026"

dl "https://pikaso.cdnpk.net/private/production/4660971069/render.png?token=exp=1782518400~hmac=ee9020ca1023276b70c1f945ffc1533e0425c17c7eb4a5c54137cf84ae2c595c" \
   "$BASE/2026/July/Jul01_HP_LaserJet_Pro.png" \
   "Jul 1 HP LaserJet Pro"

dl "https://pikaso.cdnpk.net/private/production/4660972152/render.png?token=exp=1782518400~hmac=8be73cf0239be7fc553f9c62664f9d9ad0dd591e19e4371a6ccb7408ac90f0af" \
   "$BASE/2026/July/Jul03_Network_Cabling.png" \
   "Jul 3 Network Cabling"

dl "https://pikaso.cdnpk.net/private/production/4660972297/render.png?token=exp=1782518400~hmac=7414d562846c67bacbc5bd53717723b02805b0a30eeca7420de9c3b0aab337ba" \
   "$BASE/2026/July/Jul08_UPS_Inverter_Solutions.png" \
   "Jul 8 UPS & Inverter Solutions"

dl "https://pikaso.cdnpk.net/private/production/4660972868/render.png?token=exp=1782518400~hmac=90715a90825f01ffc32e34f07f644161ff47a682f10f014c74dec75a84876ef4" \
   "$BASE/2026/July/Jul10_Custom_ERP_Software.png" \
   "Jul 10 Custom ERP & Software"

dl "https://pikaso.cdnpk.net/private/production/4660975386/render.png?token=exp=1782518400~hmac=fc4876c939c94ddb145c7ea17bc8232ff756fcccb4e1bae836fa193be4caf546" \
   "$BASE/2026/July/Jul15_Projector_Conferencing.png" \
   "Jul 15 Projector & Conferencing"

dl "https://pikaso.cdnpk.net/private/production/4660972438/render.png?token=exp=1782518400~hmac=d5555970c7fc64f913fa018adfd8135d93a0ffe5e1737bd86181cfb8d52062cb" \
   "$BASE/2026/July/Jul17_5Signs_Network_Upgrade.png" \
   "Jul 17 5 Signs Network Upgrade"

dl "https://pikaso.cdnpk.net/private/production/4660975172/render.png?token=exp=1782518400~hmac=f27293845828aaed8b9f03384197b86b206554b62b76fb57083f83de11461124" \
   "$BASE/2026/July/Jul22_Biometric_Access.png" \
   "Jul 22 Biometric Access Control"

dl "https://pikaso.cdnpk.net/private/production/4660973679/render.png?token=exp=1782518400~hmac=64f617e4454f20dca7407f7cbd97fa1e0b8dd4a0da56ee123f0ac2bbe667898a" \
   "$BASE/2026/July/Jul24_PBX_IP_Phone_Systems.png" \
   "Jul 24 PBX & IP Phone Systems"

dl "https://pikaso.cdnpk.net/private/production/4660975154/render.png?token=exp=1782518400~hmac=8dffa3fec3f2763173a94960ca4ec75b54e9cc67d5d4a5e80e38e5b919367678" \
   "$BASE/2026/July/Jul29_Brand_Since_2015.png" \
   "Jul 29 Brand: Since 2015"

dl "https://pikaso.cdnpk.net/private/production/4660976903/render.png?token=exp=1782518400~hmac=bd27cbef850c10e45c989f805a3c232c8d5d2f3e10211848546632581183e437" \
   "$BASE/2026/July/Jul31_Cloud_vs_Local_Backup.png" \
   "Jul 31 Cloud vs Local Backup"

echo ""

# ─────────────────────────────
# AUGUST 2026
# ─────────────────────────────
echo "📁 August 2026"

dl "https://pikaso.cdnpk.net/private/production/4662197365/render.png?token=exp=1782518400~hmac=7fe7a9d2d5a2c77ef58dde31c98fb7fd8b70ae1c75f580c7bb1dfee810e47ddf" \
   "$BASE/2026/August/2026-08-04_Dell-Laptops-Desktops.png" \
   "Aug 4 Dell Laptops & Desktops"

dl "https://pikaso.cdnpk.net/private/production/4662474766/render.png?token=exp=1782518400~hmac=33be750f3cc91cb163fbc290f35115f0fe590fda8a1657f41acd4782a073418e" \
   "$BASE/2026/August/Aug05_VS_IPCamera_vs_Analogue_Slide1_Title.png" \
   "Aug 5 VS Carousel — Slide 1 Title"

dl "https://pikaso.cdnpk.net/private/production/4662475042/render.png?token=exp=1782518400~hmac=2a0b81830df0377ec6a539db6e77bcad07770a54131d49e0021a0fb34b37c962" \
   "$BASE/2026/August/Aug05_VS_IPCamera_vs_Analogue_Slide2_IPCamera.png" \
   "Aug 5 VS Carousel — Slide 2 IP Camera"

dl "https://pikaso.cdnpk.net/private/production/4662475566/render.png?token=exp=1782518400~hmac=c188b7accec89338634cfd0dcccf4112f9fed5ad5fc39736684752e69bb40655" \
   "$BASE/2026/August/Aug05_VS_IPCamera_vs_Analogue_Slide3_Analogue.png" \
   "Aug 5 VS Carousel — Slide 3 Analogue"

dl "https://pikaso.cdnpk.net/private/production/4662475776/render.png?token=exp=1782518400~hmac=8f754d47e31aa60756102428f57ec5a227dd9ad1101baa061514e581cd8c0876" \
   "$BASE/2026/August/Aug05_VS_IPCamera_vs_Analogue_Slide4_Verdict.png" \
   "Aug 5 VS Carousel — Slide 4 Verdict"

dl "https://pikaso.cdnpk.net/private/production/4662196788/render.png?token=exp=1782518400~hmac=4466de56b9d2f22c1d15f858d731f81f757f6867651b954b74c1ebca78a211f0" \
   "$BASE/2026/August/2026-08-06_Cloud-Integration-Server-Room.png" \
   "Aug 6 Cloud Integration & Server Room"

dl "https://pikaso.cdnpk.net/private/production/4662475416/render.png?token=exp=1782518400~hmac=e61ffaf623712ed142173127230acc4393c120ed4d70e047566d0c66624c9b10" \
   "$BASE/2026/August/Aug08_FAQ_UPS_Slide1_Title.png" \
   "Aug 8 FAQ Carousel — Slide 1 Title"

dl "https://pikaso.cdnpk.net/private/production/4662475548/render.png?token=exp=1782518400~hmac=ffadf8b5008370dde8e83646e984eb11981a10b4c096d33372c33c2c80917cd8" \
   "$BASE/2026/August/Aug08_FAQ_UPS_Slide2_WhatUPSDoes.png" \
   "Aug 8 FAQ Carousel — Slide 2 What UPS Does"

dl "https://pikaso.cdnpk.net/private/production/4662475642/render.png?token=exp=1782518400~hmac=b8b41596eaccb93e25143039d8cee3bc7e60735f212eaf29ebe4e3957d7b869c" \
   "$BASE/2026/August/Aug08_FAQ_UPS_Slide3_SignsYouNeedOne.png" \
   "Aug 8 FAQ Carousel — Slide 3 Signs You Need One"

dl "https://pikaso.cdnpk.net/private/production/4662476873/render.png?token=exp=1782518400~hmac=a69489a475bd4a43eb79fc6692a265ebbd094e2c7bcb2d9c9d8df0b97ec8a6e6" \
   "$BASE/2026/August/Aug08_FAQ_UPS_Slide4_CTA.png" \
   "Aug 8 FAQ Carousel — Slide 4 CTA"

dl "https://pikaso.cdnpk.net/private/production/4662195799/render.png?token=exp=1782518400~hmac=cd3a0c7fdfdb4244a0ee5cce173b18b454372566d6721dc56883e2cb167eb1b4" \
   "$BASE/2026/August/2026-08-11_Home-Industrial-Inverter-Solar.png" \
   "Aug 11 Inverter/Solar"

dl "https://pikaso.cdnpk.net/private/production/4662195694/render.png?token=exp=1782518400~hmac=bd34e3f9364ee851937a3cba96981a88ab6116e1d2a74949ebddb48e29613704" \
   "$BASE/2026/August/2026-08-12_Fiber-Optic-Structured-Cabling.png" \
   "Aug 12 Fiber Optic"

dl "https://pikaso.cdnpk.net/private/production/4662196496/render.png?token=exp=1782518400~hmac=3fc16857e47f0a7a48a4da86a425069db196dae001166110ea1d3b4e3d62a661" \
   "$BASE/2026/August/2026-08-14_WiFi-Wireless-Networking.png" \
   "Aug 14 WiFi"

dl "https://pikaso.cdnpk.net/private/production/4662198292/render.png?token=exp=1782518400~hmac=4db295c40c2a71c3c81b6cd2083e3e1a2c5daf95ea95e5ed189a9d118667866c" \
   "$BASE/2026/August/2026-08-18_Tip-Laptop-Battery-Life.png" \
   "Aug 18 Battery Tips"

dl "https://pikaso.cdnpk.net/private/production/4662196784/render.png?token=exp=1782518400~hmac=6d20c7ba438cf3c5b31c7d74b9399cdb9691ff72199342e9fd7fe5617eb08e99" \
   "$BASE/2026/August/2026-08-20_IP-Surveillance-Camera-Upgrades.png" \
   "Aug 20 IP Cameras"

dl "https://pikaso.cdnpk.net/private/production/4662198442/render.png?token=exp=1782518400~hmac=4a44fa9b2398004b4fd1a608418f46e3afd2b3aa9ade01f2dc4046aaac983c62" \
   "$BASE/2026/August/2026-08-25_Custom-Website-Development.png" \
   "Aug 25 Website Dev"

dl "https://pikaso.cdnpk.net/private/production/4662199190/render.png?token=exp=1782518400~hmac=ed2b8397263c21e7cef4cd0cedd8cf754412a5dfad811f85fc1deb749e3ed72c" \
   "$BASE/2026/August/2026-08-27_Brand-One-Call-Complete-IT.png" \
   "Aug 27 Brand: One Call"

dl "https://pikaso.cdnpk.net/private/production/4662198948/render.png?token=exp=1782518400~hmac=c5b6dbfe900a39b1c459be735c8c5c91d7150f6bb3dd7a6e68df010cafc69fac" \
   "$BASE/2026/August/2026-08-29_Tip-HDD-to-SSD-Upgrade.png" \
   "Aug 29 HDD→SSD"

echo ""
echo "────────────────────────────"
echo "✅ Downloaded: $pass files"
echo "⏭️  Skipped (already exist): $skip files"
if [ $fail -gt 0 ]; then
  echo "❌ Failed: $fail files (token may have expired — ask Claude to refresh URLs)"
fi
echo ""
echo "ℹ️  September 2026 – June 2027 images will be added here as they are generated each month."
