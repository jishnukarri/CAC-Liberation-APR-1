# CAC Liberation APR for Arma 3

![Moistbois' avatar, which is an old school 3D model of a yellow smiling face with sunglasses and a Vietnam War helmet.](https://images-ext-1.discordapp.net/external/qlssKtjG016FiLUhQRemknhfqmGoA1pzbwkm8csWSp0/%3Fsize%3D512/https/cdn.discordapp.com/avatars/696450714376994856/a_ef3992fd990ec0e033c7167a53f1ab0d.gif?width=134&height=134)

[![license](https://img.shields.io/github/license/KillahPotatoes/KP-Liberation.svg)](https://github.com/KillahPotatoes/KP-Liberation/blob/master/LICENSE.md)
[![Last Update](https://img.shields.io/github/commit-activity/w/jishnukarri/CAC-Liberation-APR-1)](https://github.com/jishnukarri/CAC-Liberation-APR-1/commits/main/)
[![GitHub issues](https://img.shields.io/github/issues-raw/jishnukarri/CAC-Liberation-APR-1.svg)](https://github.com/jishnukarri/CAC-Liberation-APR-1/issues)
[![GitHub closed issues](https://img.shields.io/github/issues-closed-raw/jishnukarri/CAC-Liberation-APR-1.svg)](https://github.com/jishnukarri/CAC-Liberation-APR-1/issues?q=is%3Aissue+is%3Aclosed)
[![GitHub contributors](https://img.shields.io/github/contributors/jishnukarri/CAC-Liberation-APR-1)](https://github.com/jishnukarri/CAC-Liberation-APR-1/graphs/contributors)
[![GitHub pull requests](https://img.shields.io/github/issues-pr-raw/jishnukarri/CAC-Liberation-APR-1.svg)](https://github.com/jishnukarri/CAC-Liberation-APR-1/pulls)
[![GitHub closed pull requests](https://img.shields.io/github/issues-pr-closed-raw/jishnukarri/CAC-Liberation-APR-1.svg)](https://github.com/jishnukarri/CAC-Liberation-APR-1/pulls?q=is%3Apr+is%3Aclosed)
## About
CAC Liberation APR is a fork of [a fork](https://github.com/moistbois/Moist-Liberation-APR) of a [a fork](https://github.com/Apricot-ale/KP-Liberation-APR) of [a fork](https://github.com/KillahPotatoes/KP-Liberation) of [a fork](https://github.com/GreuhZbug/greuh_liberation.Altis). We originally lightly tweaked [KP Liberation](https://github.com/KillahPotatoes/KP-Liberation) missions but decided to instead build on top of [KP Liberation APR](https://github.com/Apricot-ale/KP-Liberation-APR). Moistbois's fork has many implemented features of KP Liberation stated for v0.96.8 that were never released, along with some curated PRs, and optimizations. This gave us a great base to work off of to add new features.

You can support the original developer of KP Liberation via Paypal [here](https://www.paypal.me/wyqer).

## Usage
We forked this repo to keep commit history in case things go wrong. We will not prevent you from forking this repo as that goes against the spirit of open source. However, be warned that we commit things that are tailored for our server/community. There's no guarantee it will work well on yours, nor that it will be easy to navigate through our janky commits. You can ask for help in the Discord if needed.

## Features
On top of [KP Liberation's features](https://github.com/moistbois/Moist-Liberation-APR?tab=readme-ov-file#overview) and [Apricot's fork upgrades](https://github.com/Apricot-ale/KP-Liberation-APR/commits/v0.96.8apr/), this fork has a few extra tricks up its sleeves:
* Enemy uses artillery, powered by [Rydygier's Fire For Effect script](https://forums.bohemia.net/forums/topic/159152-fire-for-effect-the-god-of-war-smart-simple-ai-artillery/)
* Updated build system to better implement per-mission tweaks.
* A griefing notification system, which uses global chat to say when a player friendly fires an allied AI or civilian.
* Persistent vehicle cargo, thanks to [Uniflare's PR](https://github.com/moistbois/Moist-Liberation-APR/pull/914)
* Persistent vehicle damage and fuel condition.
* Fixed boats not activating sectors.
* Mobile Respawns have NATO Alphabet designations instead of grid position.
* Multiple Mobile Respawns (Ground, Boat, Air) for more flexible attack options.
* New secondary objective (Humanitarian Aid), thanks to [UselessFodder](https://github.com/moistbois/Moist-Liberation-APR/pull/894)
* Tweaked balancing, focusing creating more immersion and promoting more cooperative gameplay.
    * This includes disabling auto-deploying with GPS, artillery engine, squad management, current sector, and sector progress UI, among other things.
* Per-sector activation range to allow more granular optimization of missions.
* Full Heal tweaked to have a cooldown and not work around enemies.
* New "Gear Crates", powered by [ALiVE's Orbat Faction creator](http://alivemod.com/). Add new crates with goodies to the build list, without their goodies being wiped by the clear script. They can be locked behind military base captures.
* CH View Distance has "Standard" as the lowest option to disallow removing grass, [thanks to champ-1](https://forums.bohemia.net/forums/topic/175757-ch-view-distance-addon/).
* Change vehicle camos at workbenches, thanks to Vehicle Appearance Manager GUI. Credits to [UNIT_normal](https://forums.bohemia.net/forums/topic/224041-release-vehicle-appearance-manager-gui/)
*Access Vehicle Inventory through our menu(IN THE WORKS)
## Watch
We regularly stream our campaigns and sometimes even development. You can watch us at:
* [Pantteri](https://www.twitch.tv/pantrh)
* [CarlMylo](https://www.twitch.tv/CarlMylo)
* [Phantom](https://www.twitch.tv/phantom_116_)
