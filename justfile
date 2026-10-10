build: badges

badges: badge-sober badge-creative badge-bevy

badge source target:
    typst compile {{source}} {{target}}
    python src/resize.py {{target}} {{target}}

badge-sober: (badge "src/ai_sober.typ" "rendered/ai_sober.svg")
badge-creative: (badge "src/creative_bevians.typ" "rendered/creative_bevians.svg")
badge-bevy: (badge "src/bevy.typ" "rendered/bevy.svg")