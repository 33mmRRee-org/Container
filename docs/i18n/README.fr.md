<div align="center">

**🌐 Langues**

[Türkçe](../../README.md) · [English](README.en.md) · [简体中文](README.zh-CN.md) · [繁體中文](README.zh-TW.md) · [日本語](README.ja.md) · [한국어](README.ko.md)

[Deutsch](README.de.md) · **Français** · [Español](README.es.md) · [Português (Brasil)](README.pt-BR.md) · [Italiano](README.it.md) · [Русский](README.ru.md)

[Українська](README.uk.md) · [العربية](README.ar.md) · [فارسی](README.fa.md) · [हिन्दी](README.hi.md) · [Bahasa Indonesia](README.id.md) · [Tiếng Việt](README.vi.md)

</div>

---

# 33mmRRee-org · Container

**Images de base Linux pour conteneurs — construction à partir des recettes sources, tests par architecture et publication sur GHCR, Docker Hub et Quay.**

[![État de la construction](https://github.com/33mmRRee-org/Container/actions/workflows/build-base-images.yml/badge.svg?branch=main)](https://github.com/33mmRRee-org/Container/actions/workflows/build-base-images.yml)
[![Mises à jour des sources](https://github.com/33mmRRee-org/Cron/actions/workflows/mirror-container-sources.yml/badge.svg?branch=main)](https://github.com/33mmRRee-org/Cron/actions/workflows/mirror-container-sources.yml)
[![Registre : GHCR](https://img.shields.io/badge/registry-GHCR-0969da?style=flat-square)](https://github.com/orgs/33mmRRee-org/packages?ecosystem=container)
[![Registre : Docker Hub](https://img.shields.io/badge/registry-Docker_Hub-2496ed?style=flat-square)](https://hub.docker.com/u/thebigman)
[![Registre : Quay](https://img.shields.io/badge/registry-Quay-ee0000?style=flat-square)](https://quay.io/organization/thebigman)

**8 distributions** · **Versions et architectures dynamiques** · **Construction → Test → Publication**

[Images](#images-and-downloads) · [Architectures](#versions-and-architectures) · [Utilisation](#quick-start) · [Lancer les constructions](#run-builds) · [Informations sur les images](#oci-metadata)

---

<a id="images-and-downloads"></a>

## Images et téléchargements

| Distribution | GHCR | Docker Hub | Quay |
|---|---|---|---|
| [Ubuntu](https://github.com/33mmRRee-org/Ubuntu) | [![ubuntu nombre de téléchargements GHCR](https://img.shields.io/badge/dynamic/regex?url=https%3A%2F%2Fgithub.com%2Forgs%2F33mmRRee-org%2Fpackages%2Fcontainer%2Fpackage%2Fubuntu&search=Total%20downloads%3C%2Fspan%3E%5Cs%2A%3Ch3%20title%3D%22%28%5B0-9%2C%5D%2B%29%22%3E&replace=%241&label=&logo=github&color=0969da&style=flat-square&cacheSeconds=300)](https://github.com/orgs/33mmRRee-org/packages/container/package/ubuntu) | [![ubuntu Docker Hub pulls](https://img.shields.io/docker/pulls/thebigman/ubuntu?label=&logo=docker&style=flat-square)](https://hub.docker.com/r/thebigman/ubuntu) | [![ubuntu Quay architectures](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fquay.io%2Fapi%2Fv1%2Frepository%2Fthebigman%2Fubuntu%2Ftag%2F%3FspecificTag%3Dlatest%26onlyActiveTags%3Dtrue&query=%24.tags%5B0%5D.child_manifest_count&label=&logo=redhat&color=ee0000&style=flat-square&cacheSeconds=300)](https://quay.io/repository/thebigman/ubuntu?tab=tags) |
| [Debian](https://github.com/33mmRRee-org/Debian) | [![debian nombre de téléchargements GHCR](https://img.shields.io/badge/dynamic/regex?url=https%3A%2F%2Fgithub.com%2Forgs%2F33mmRRee-org%2Fpackages%2Fcontainer%2Fpackage%2Fdebian&search=Total%20downloads%3C%2Fspan%3E%5Cs%2A%3Ch3%20title%3D%22%28%5B0-9%2C%5D%2B%29%22%3E&replace=%241&label=&logo=github&color=0969da&style=flat-square&cacheSeconds=300)](https://github.com/orgs/33mmRRee-org/packages/container/package/debian) | [![debian Docker Hub pulls](https://img.shields.io/docker/pulls/thebigman/debian?label=&logo=docker&style=flat-square)](https://hub.docker.com/r/thebigman/debian) | [![debian Quay architectures](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fquay.io%2Fapi%2Fv1%2Frepository%2Fthebigman%2Fdebian%2Ftag%2F%3FspecificTag%3Dlatest%26onlyActiveTags%3Dtrue&query=%24.tags%5B0%5D.child_manifest_count&label=&logo=redhat&color=ee0000&style=flat-square&cacheSeconds=300)](https://quay.io/repository/thebigman/debian?tab=tags) |
| [CentOS Stream](https://github.com/33mmRRee-org/Centos) | [![centos nombre de téléchargements GHCR](https://img.shields.io/badge/dynamic/regex?url=https%3A%2F%2Fgithub.com%2Forgs%2F33mmRRee-org%2Fpackages%2Fcontainer%2Fpackage%2Fcentos&search=Total%20downloads%3C%2Fspan%3E%5Cs%2A%3Ch3%20title%3D%22%28%5B0-9%2C%5D%2B%29%22%3E&replace=%241&label=&logo=github&color=0969da&style=flat-square&cacheSeconds=300)](https://github.com/orgs/33mmRRee-org/packages/container/package/centos) | [![centos Docker Hub pulls](https://img.shields.io/docker/pulls/thebigman/centos?label=&logo=docker&style=flat-square)](https://hub.docker.com/r/thebigman/centos) | [![centos Quay architectures](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fquay.io%2Fapi%2Fv1%2Frepository%2Fthebigman%2Fcentos%2Ftag%2F%3FspecificTag%3Dlatest%26onlyActiveTags%3Dtrue&query=%24.tags%5B0%5D.child_manifest_count&label=&logo=redhat&color=ee0000&style=flat-square&cacheSeconds=300)](https://quay.io/repository/thebigman/centos?tab=tags) |
| [Alpine](https://github.com/33mmRRee-org/Alpine) | [![alpine nombre de téléchargements GHCR](https://img.shields.io/badge/dynamic/regex?url=https%3A%2F%2Fgithub.com%2Forgs%2F33mmRRee-org%2Fpackages%2Fcontainer%2Fpackage%2Falpine&search=Total%20downloads%3C%2Fspan%3E%5Cs%2A%3Ch3%20title%3D%22%28%5B0-9%2C%5D%2B%29%22%3E&replace=%241&label=&logo=github&color=0969da&style=flat-square&cacheSeconds=300)](https://github.com/orgs/33mmRRee-org/packages/container/package/alpine) | [![alpine Docker Hub pulls](https://img.shields.io/docker/pulls/thebigman/alpine?label=&logo=docker&style=flat-square)](https://hub.docker.com/r/thebigman/alpine) | [![alpine Quay architectures](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fquay.io%2Fapi%2Fv1%2Frepository%2Fthebigman%2Falpine%2Ftag%2F%3FspecificTag%3Dlatest%26onlyActiveTags%3Dtrue&query=%24.tags%5B0%5D.child_manifest_count&label=&logo=redhat&color=ee0000&style=flat-square&cacheSeconds=300)](https://quay.io/repository/thebigman/alpine?tab=tags) |
| [Fedora](https://github.com/33mmRRee-org/Fedora) | [![fedora nombre de téléchargements GHCR](https://img.shields.io/badge/dynamic/regex?url=https%3A%2F%2Fgithub.com%2Forgs%2F33mmRRee-org%2Fpackages%2Fcontainer%2Fpackage%2Ffedora&search=Total%20downloads%3C%2Fspan%3E%5Cs%2A%3Ch3%20title%3D%22%28%5B0-9%2C%5D%2B%29%22%3E&replace=%241&label=&logo=github&color=0969da&style=flat-square&cacheSeconds=300)](https://github.com/orgs/33mmRRee-org/packages/container/package/fedora) | [![fedora Docker Hub pulls](https://img.shields.io/docker/pulls/thebigman/fedora?label=&logo=docker&style=flat-square)](https://hub.docker.com/r/thebigman/fedora) | [![fedora Quay architectures](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fquay.io%2Fapi%2Fv1%2Frepository%2Fthebigman%2Ffedora%2Ftag%2F%3FspecificTag%3Dlatest%26onlyActiveTags%3Dtrue&query=%24.tags%5B0%5D.child_manifest_count&label=&logo=redhat&color=ee0000&style=flat-square&cacheSeconds=300)](https://quay.io/repository/thebigman/fedora?tab=tags) |
| [AlmaLinux](https://github.com/33mmRRee-org/AlmaLinux) | [![almalinux nombre de téléchargements GHCR](https://img.shields.io/badge/dynamic/regex?url=https%3A%2F%2Fgithub.com%2Forgs%2F33mmRRee-org%2Fpackages%2Fcontainer%2Fpackage%2Falmalinux&search=Total%20downloads%3C%2Fspan%3E%5Cs%2A%3Ch3%20title%3D%22%28%5B0-9%2C%5D%2B%29%22%3E&replace=%241&label=&logo=github&color=0969da&style=flat-square&cacheSeconds=300)](https://github.com/orgs/33mmRRee-org/packages/container/package/almalinux) | [![almalinux Docker Hub pulls](https://img.shields.io/docker/pulls/thebigman/almalinux?label=&logo=docker&style=flat-square)](https://hub.docker.com/r/thebigman/almalinux) | [![almalinux Quay architectures](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fquay.io%2Fapi%2Fv1%2Frepository%2Fthebigman%2Falmalinux%2Ftag%2F%3FspecificTag%3Dlatest%26onlyActiveTags%3Dtrue&query=%24.tags%5B0%5D.child_manifest_count&label=&logo=redhat&color=ee0000&style=flat-square&cacheSeconds=300)](https://quay.io/repository/thebigman/almalinux?tab=tags) |
| [Arch Linux](https://github.com/33mmRRee-org/ArchLinux) | [![archlinux nombre de téléchargements GHCR](https://img.shields.io/badge/dynamic/regex?url=https%3A%2F%2Fgithub.com%2Forgs%2F33mmRRee-org%2Fpackages%2Fcontainer%2Fpackage%2Farchlinux&search=Total%20downloads%3C%2Fspan%3E%5Cs%2A%3Ch3%20title%3D%22%28%5B0-9%2C%5D%2B%29%22%3E&replace=%241&label=&logo=github&color=0969da&style=flat-square&cacheSeconds=300)](https://github.com/orgs/33mmRRee-org/packages/container/package/archlinux) | [![archlinux Docker Hub pulls](https://img.shields.io/docker/pulls/thebigman/archlinux?label=&logo=docker&style=flat-square)](https://hub.docker.com/r/thebigman/archlinux) | [![archlinux Quay architectures](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fquay.io%2Fapi%2Fv1%2Frepository%2Fthebigman%2Farchlinux%2Ftag%2F%3FspecificTag%3Dlatest%26onlyActiveTags%3Dtrue&query=%24.tags%5B0%5D.child_manifest_count&label=&logo=redhat&color=ee0000&style=flat-square&cacheSeconds=300)](https://quay.io/repository/thebigman/archlinux?tab=tags) |
| [Rocky Linux](https://github.com/33mmRRee-org/RockyLinux) | [![rockylinux nombre de téléchargements GHCR](https://img.shields.io/badge/dynamic/regex?url=https%3A%2F%2Fgithub.com%2Forgs%2F33mmRRee-org%2Fpackages%2Fcontainer%2Fpackage%2Frockylinux&search=Total%20downloads%3C%2Fspan%3E%5Cs%2A%3Ch3%20title%3D%22%28%5B0-9%2C%5D%2B%29%22%3E&replace=%241&label=&logo=github&color=0969da&style=flat-square&cacheSeconds=300)](https://github.com/orgs/33mmRRee-org/packages/container/package/rockylinux) | [![rockylinux Docker Hub pulls](https://img.shields.io/docker/pulls/thebigman/rockylinux?label=&logo=docker&style=flat-square)](https://hub.docker.com/r/thebigman/rockylinux) | [![rockylinux Quay architectures](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fquay.io%2Fapi%2Fv1%2Frepository%2Fthebigman%2Frockylinux%2Ftag%2F%3FspecificTag%3Dlatest%26onlyActiveTags%3Dtrue&query=%24.tags%5B0%5D.child_manifest_count&label=&logo=redhat&color=ee0000&style=flat-square&cacheSeconds=300)](https://quay.io/repository/thebigman/rockylinux?tab=tags) |

Les badges GHCR et Docker Hub indiquent le nombre total de téléchargements ; le badge Quay indique le nombre d’architectures de l’étiquette `latest`. Cliquez sur les badges pour consulter les étiquettes et les architectures. Les compteurs sont propres à chaque registre ; le cache peut retarder les mises à jour.

```bash
docker pull ghcr.io/33mmrree-org/ubuntu:latest
docker pull docker.io/thebigman/ubuntu:latest
docker pull quay.io/thebigman/ubuntu:latest
```

<a id="versions-and-architectures"></a>

## Références des versions et architectures

Versions et plateformes construites pour chaque distribution. Vérifiez les architectures publiées dans le champ OS/Arch de l étiquette choisie ou dans son index OCI.

| Distribution | Versions | Plateformes — avec le préfixe `linux/` |
|---|---|---|
| Ubuntu | `18.04`, `20.04`, `22.04`, `24.04`, `26.04` | `amd64`, `arm/v7`, `arm64`, `ppc64le`, `riscv64`, `s390x` |
| Debian | `bookworm` | `386`, `amd64`, `arm/v7`, `arm64`, `ppc64le` |
| Debian | `trixie` | `386`, `amd64`, `arm/v5`, `arm/v7`, `arm64`, `ppc64le`, `riscv64`, `s390x` |
| CentOS Stream | `stream9`, `stream10` | `amd64`, `arm64`, `ppc64le`, `s390x` |
| Alpine | `3.22`, `3.23`, `3.24` | `386`, `amd64`, `arm/v6`, `arm/v7`, `arm64`, `ppc64le`, `riscv64`, `s390x` |
| Fedora | `44`, `45` | `amd64`, `arm64`, `ppc64le`, `s390x` |
| AlmaLinux | `8`, `9` | `386`, `amd64`, `arm64`, `ppc64le`, `s390x` |
| AlmaLinux | `10` | `386`, `amd64`, `amd64/v2`, `arm64`, `ppc64le`, `s390x` |
| Arch Linux | `rolling` | `amd64` |
| Rocky Linux | `8` | `amd64`, `arm64` |
| Rocky Linux | `9` | `amd64`, `arm64`, `ppc64le`, `s390x` |
| Rocky Linux | `10` | `amd64`, `arm64`, `ppc64le`, `riscv64`, `s390x` |

Les architectures disponibles peuvent varier selon la version.

Examinez les architectures réelles d’une étiquette :

```bash
docker buildx imagetools inspect ghcr.io/33mmrree-org/ubuntu:latest
docker buildx imagetools inspect --raw ghcr.io/33mmrree-org/ubuntu:latest
```

<a id="quick-start"></a>

## Démarrage rapide

Remplacez `latest` dans les exemples par l’**étiquette publiée** que vous souhaitez utiliser. Aucune connexion à GHCR n’est nécessaire pour télécharger les images publiques.

### Télécharger et exécuter

```bash
docker pull ghcr.io/33mmrree-org/ubuntu:latest
docker run --rm -it ghcr.io/33mmrree-org/ubuntu:latest /bin/sh
```

Docker sélectionne dans l’étiquette multiarchitecture l’image adaptée à l’architecture de votre ordinateur.

### Choisir une architecture

```bash
docker pull --platform linux/arm64 ghcr.io/33mmrree-org/ubuntu:latest

docker run --rm --platform linux/arm64 \
  ghcr.io/33mmrree-org/ubuntu:latest \
  /bin/sh -c 'cat /etc/os-release'
```

L’exécution d’une image destinée à une autre famille de processeurs nécessite une émulation appropriée.

### Fixer l’image par son digest

```bash
docker image inspect --format '{{json .RepoDigests}}' \
  ghcr.io/33mmrree-org/ubuntu:latest

# Remplacez <digest> par la valeur SHA256 de l’image.
docker pull ghcr.io/33mmrree-org/ubuntu@sha256:<digest>
```

Les étiquettes de version peuvent être mises à jour ; le digest permet de réutiliser exactement la même image.

### Utiliser dans votre propre image

```dockerfile
FROM ghcr.io/33mmrree-org/ubuntu:latest

COPY app/ /opt/app/
WORKDIR /opt/app
CMD ["/bin/sh"]
```

<a id="run-builds"></a>

## Lancer les constructions

[Actions → Construire les images de base → Exécuter le workflow](https://github.com/33mmRRee-org/Container/actions/workflows/build-base-images.yml):

| Champ | Utilisation |
|---|---|
| `distribution` | `all` ou le nom d’une distribution. |
| `version` | `all` ou une version exacte, comme `24.04`, `trixie`, `stream10` ou `rolling`. |
| `verify_only` | `true` : reconstruire/tester sans publication. `false` : construire/tester et publier les images modifiées ou manquantes. |

Toutes les architectures découvertes pour la version choisie sont traitées. Avec GitHub CLI :

```bash
# Construire et publier les images modifiées ou manquantes de toutes les distributions.
gh workflow run build-base-images.yml \
  --repo 33mmRRee-org/Container --ref main \
  -f distribution=all -f version=all -f verify_only=false

# Construire et tester uniquement les images Fedora.
gh workflow run build-base-images.yml \
  --repo 33mmRRee-org/Container --ref main \
  -f distribution=Fedora -f version=all -f verify_only=true
```

Le badge de construction ci-dessus indique le résultat du dernier workflow ; une exécution limitée à la vérification ne publie aucune image.

<a id="oci-metadata"></a>

## Étiquettes et informations sur les images

| Référence | Signification |
|---|---|
| `ubuntu:24.04`, `debian:trixie`, `centos:stream10` | Étiquette multiarchitecture contenant les architectures testées de la version concernée. |
| `latest` et autres alias | Étiquettes définies selon le catalogue de versions de la distribution. |
| `<image>@sha256:<digest>` | Référence immuable au contenu de l’image. |

Les informations sur la source, la version et la construction de l’image figurent dans ses métadonnées OCI :

```bash
docker image inspect --format '{{json .Config.Labels}}' \
  ghcr.io/33mmrree-org/ubuntu:latest
```

`org.opencontainers.image.source` indique le dépôt de la recette source, `org.opencontainers.image.version` la version et `io.33mmrree-org.build.source` le code de construction. L’index multiarchitecture et les annotations d’architecture peuvent être consultés avec `docker buildx imagetools inspect --raw`.
