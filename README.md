<div align="center">

**🌐 Languages / Diller**

**Türkçe** · [English](docs/i18n/README.en.md) · [简体中文](docs/i18n/README.zh-CN.md) · [繁體中文](docs/i18n/README.zh-TW.md) · [日本語](docs/i18n/README.ja.md) · [한국어](docs/i18n/README.ko.md)

[Deutsch](docs/i18n/README.de.md) · [Français](docs/i18n/README.fr.md) · [Español](docs/i18n/README.es.md) · [Português (Brasil)](docs/i18n/README.pt-BR.md) · [Italiano](docs/i18n/README.it.md) · [Русский](docs/i18n/README.ru.md)

[Українська](docs/i18n/README.uk.md) · [العربية](docs/i18n/README.ar.md) · [فارسی](docs/i18n/README.fa.md) · [हिन्दी](docs/i18n/README.hi.md) · [Bahasa Indonesia](docs/i18n/README.id.md) · [Tiếng Việt](docs/i18n/README.vi.md)

</div>

---

# 33mmRRee-org · Container

**Linux temel container imajları — kaynak reçetelerinden build, mimari bazında test ve GHCR, Docker Hub ve Quay yayını.**

[![Build durumu](https://github.com/33mmRRee-org/Container/actions/workflows/build-base-images.yml/badge.svg?branch=main)](https://github.com/33mmRRee-org/Container/actions/workflows/build-base-images.yml)
[![Kaynak güncellemeleri](https://github.com/33mmRRee-org/Cron/actions/workflows/mirror-container-sources.yml/badge.svg?branch=main)](https://github.com/33mmRRee-org/Cron/actions/workflows/mirror-container-sources.yml)
[![Registry: GHCR](https://img.shields.io/badge/registry-GHCR-0969da?style=flat-square)](https://github.com/orgs/33mmRRee-org/packages?ecosystem=container)
[![Registry: Docker Hub](https://img.shields.io/badge/registry-Docker_Hub-2496ed?style=flat-square)](https://hub.docker.com/u/thebigman)
[![Registry: Quay](https://img.shields.io/badge/registry-Quay-ee0000?style=flat-square)](https://quay.io/organization/thebigman)

**8 dağıtım** · **Dinamik sürüm ve mimariler** · **Build → Test → Publish**

[İmajlar](#images-and-downloads) · [Mimariler](#versions-and-architectures) · [Kullanım](#quick-start) · [Build başlatma](#run-builds) · [İmaj bilgileri](#oci-metadata)

---

<a id="images-and-downloads"></a>

## İmajlar ve indirmeler

| Dağıtım | GHCR | Docker Hub | Quay |
|---|---|---|---|
| [Ubuntu](https://github.com/33mmRRee-org/Ubuntu) | [![ubuntu GHCR indirme sayısı](https://img.shields.io/badge/dynamic/regex?url=https%3A%2F%2Fgithub.com%2Forgs%2F33mmRRee-org%2Fpackages%2Fcontainer%2Fpackage%2Fubuntu&search=Total%20downloads%3C%2Fspan%3E%5Cs%2A%3Ch3%20title%3D%22%28%5B0-9%2C%5D%2B%29%22%3E&replace=%241&label=GHCR%20downloads&color=0969da&style=flat-square&cacheSeconds=300)](https://github.com/orgs/33mmRRee-org/packages/container/package/ubuntu) | [![ubuntu Docker Hub pulls](https://img.shields.io/docker/pulls/thebigman/ubuntu?label=Docker%20pulls&style=flat-square)](https://hub.docker.com/r/thebigman/ubuntu) | [![ubuntu Quay architectures](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fquay.io%2Fapi%2Fv1%2Frepository%2Fthebigman%2Fubuntu%2Ftag%2F%3FspecificTag%3Dlatest%26onlyActiveTags%3Dtrue&query=%24.tags%5B0%5D.child_manifest_count&label=Quay%20architectures&color=ee0000&style=flat-square&cacheSeconds=300)](https://quay.io/repository/thebigman/ubuntu?tab=tags) |
| [Debian](https://github.com/33mmRRee-org/Debian) | [![debian GHCR indirme sayısı](https://img.shields.io/badge/dynamic/regex?url=https%3A%2F%2Fgithub.com%2Forgs%2F33mmRRee-org%2Fpackages%2Fcontainer%2Fpackage%2Fdebian&search=Total%20downloads%3C%2Fspan%3E%5Cs%2A%3Ch3%20title%3D%22%28%5B0-9%2C%5D%2B%29%22%3E&replace=%241&label=GHCR%20downloads&color=0969da&style=flat-square&cacheSeconds=300)](https://github.com/orgs/33mmRRee-org/packages/container/package/debian) | [![debian Docker Hub pulls](https://img.shields.io/docker/pulls/thebigman/debian?label=Docker%20pulls&style=flat-square)](https://hub.docker.com/r/thebigman/debian) | [![debian Quay architectures](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fquay.io%2Fapi%2Fv1%2Frepository%2Fthebigman%2Fdebian%2Ftag%2F%3FspecificTag%3Dlatest%26onlyActiveTags%3Dtrue&query=%24.tags%5B0%5D.child_manifest_count&label=Quay%20architectures&color=ee0000&style=flat-square&cacheSeconds=300)](https://quay.io/repository/thebigman/debian?tab=tags) |
| [CentOS Stream](https://github.com/33mmRRee-org/Centos) | [![centos GHCR indirme sayısı](https://img.shields.io/badge/dynamic/regex?url=https%3A%2F%2Fgithub.com%2Forgs%2F33mmRRee-org%2Fpackages%2Fcontainer%2Fpackage%2Fcentos&search=Total%20downloads%3C%2Fspan%3E%5Cs%2A%3Ch3%20title%3D%22%28%5B0-9%2C%5D%2B%29%22%3E&replace=%241&label=GHCR%20downloads&color=0969da&style=flat-square&cacheSeconds=300)](https://github.com/orgs/33mmRRee-org/packages/container/package/centos) | [![centos Docker Hub pulls](https://img.shields.io/docker/pulls/thebigman/centos?label=Docker%20pulls&style=flat-square)](https://hub.docker.com/r/thebigman/centos) | [![centos Quay architectures](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fquay.io%2Fapi%2Fv1%2Frepository%2Fthebigman%2Fcentos%2Ftag%2F%3FspecificTag%3Dlatest%26onlyActiveTags%3Dtrue&query=%24.tags%5B0%5D.child_manifest_count&label=Quay%20architectures&color=ee0000&style=flat-square&cacheSeconds=300)](https://quay.io/repository/thebigman/centos?tab=tags) |
| [Alpine](https://github.com/33mmRRee-org/Alpine) | [![alpine GHCR indirme sayısı](https://img.shields.io/badge/dynamic/regex?url=https%3A%2F%2Fgithub.com%2Forgs%2F33mmRRee-org%2Fpackages%2Fcontainer%2Fpackage%2Falpine&search=Total%20downloads%3C%2Fspan%3E%5Cs%2A%3Ch3%20title%3D%22%28%5B0-9%2C%5D%2B%29%22%3E&replace=%241&label=GHCR%20downloads&color=0969da&style=flat-square&cacheSeconds=300)](https://github.com/orgs/33mmRRee-org/packages/container/package/alpine) | [![alpine Docker Hub pulls](https://img.shields.io/docker/pulls/thebigman/alpine?label=Docker%20pulls&style=flat-square)](https://hub.docker.com/r/thebigman/alpine) | [![alpine Quay architectures](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fquay.io%2Fapi%2Fv1%2Frepository%2Fthebigman%2Falpine%2Ftag%2F%3FspecificTag%3Dlatest%26onlyActiveTags%3Dtrue&query=%24.tags%5B0%5D.child_manifest_count&label=Quay%20architectures&color=ee0000&style=flat-square&cacheSeconds=300)](https://quay.io/repository/thebigman/alpine?tab=tags) |
| [Fedora](https://github.com/33mmRRee-org/Fedora) | [![fedora GHCR indirme sayısı](https://img.shields.io/badge/dynamic/regex?url=https%3A%2F%2Fgithub.com%2Forgs%2F33mmRRee-org%2Fpackages%2Fcontainer%2Fpackage%2Ffedora&search=Total%20downloads%3C%2Fspan%3E%5Cs%2A%3Ch3%20title%3D%22%28%5B0-9%2C%5D%2B%29%22%3E&replace=%241&label=GHCR%20downloads&color=0969da&style=flat-square&cacheSeconds=300)](https://github.com/orgs/33mmRRee-org/packages/container/package/fedora) | [![fedora Docker Hub pulls](https://img.shields.io/docker/pulls/thebigman/fedora?label=Docker%20pulls&style=flat-square)](https://hub.docker.com/r/thebigman/fedora) | [![fedora Quay architectures](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fquay.io%2Fapi%2Fv1%2Frepository%2Fthebigman%2Ffedora%2Ftag%2F%3FspecificTag%3Dlatest%26onlyActiveTags%3Dtrue&query=%24.tags%5B0%5D.child_manifest_count&label=Quay%20architectures&color=ee0000&style=flat-square&cacheSeconds=300)](https://quay.io/repository/thebigman/fedora?tab=tags) |
| [AlmaLinux](https://github.com/33mmRRee-org/AlmaLinux) | [![almalinux GHCR indirme sayısı](https://img.shields.io/badge/dynamic/regex?url=https%3A%2F%2Fgithub.com%2Forgs%2F33mmRRee-org%2Fpackages%2Fcontainer%2Fpackage%2Falmalinux&search=Total%20downloads%3C%2Fspan%3E%5Cs%2A%3Ch3%20title%3D%22%28%5B0-9%2C%5D%2B%29%22%3E&replace=%241&label=GHCR%20downloads&color=0969da&style=flat-square&cacheSeconds=300)](https://github.com/orgs/33mmRRee-org/packages/container/package/almalinux) | [![almalinux Docker Hub pulls](https://img.shields.io/docker/pulls/thebigman/almalinux?label=Docker%20pulls&style=flat-square)](https://hub.docker.com/r/thebigman/almalinux) | [![almalinux Quay architectures](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fquay.io%2Fapi%2Fv1%2Frepository%2Fthebigman%2Falmalinux%2Ftag%2F%3FspecificTag%3Dlatest%26onlyActiveTags%3Dtrue&query=%24.tags%5B0%5D.child_manifest_count&label=Quay%20architectures&color=ee0000&style=flat-square&cacheSeconds=300)](https://quay.io/repository/thebigman/almalinux?tab=tags) |
| [Arch Linux](https://github.com/33mmRRee-org/ArchLinux) | [![archlinux GHCR indirme sayısı](https://img.shields.io/badge/dynamic/regex?url=https%3A%2F%2Fgithub.com%2Forgs%2F33mmRRee-org%2Fpackages%2Fcontainer%2Fpackage%2Farchlinux&search=Total%20downloads%3C%2Fspan%3E%5Cs%2A%3Ch3%20title%3D%22%28%5B0-9%2C%5D%2B%29%22%3E&replace=%241&label=GHCR%20downloads&color=0969da&style=flat-square&cacheSeconds=300)](https://github.com/orgs/33mmRRee-org/packages/container/package/archlinux) | [![archlinux Docker Hub pulls](https://img.shields.io/docker/pulls/thebigman/archlinux?label=Docker%20pulls&style=flat-square)](https://hub.docker.com/r/thebigman/archlinux) | [![archlinux Quay architectures](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fquay.io%2Fapi%2Fv1%2Frepository%2Fthebigman%2Farchlinux%2Ftag%2F%3FspecificTag%3Dlatest%26onlyActiveTags%3Dtrue&query=%24.tags%5B0%5D.child_manifest_count&label=Quay%20architectures&color=ee0000&style=flat-square&cacheSeconds=300)](https://quay.io/repository/thebigman/archlinux?tab=tags) |
| [Rocky Linux](https://github.com/33mmRRee-org/RockyLinux) | [![rockylinux GHCR indirme sayısı](https://img.shields.io/badge/dynamic/regex?url=https%3A%2F%2Fgithub.com%2Forgs%2F33mmRRee-org%2Fpackages%2Fcontainer%2Fpackage%2Frockylinux&search=Total%20downloads%3C%2Fspan%3E%5Cs%2A%3Ch3%20title%3D%22%28%5B0-9%2C%5D%2B%29%22%3E&replace=%241&label=GHCR%20downloads&color=0969da&style=flat-square&cacheSeconds=300)](https://github.com/orgs/33mmRRee-org/packages/container/package/rockylinux) | [![rockylinux Docker Hub pulls](https://img.shields.io/docker/pulls/thebigman/rockylinux?label=Docker%20pulls&style=flat-square)](https://hub.docker.com/r/thebigman/rockylinux) | [![rockylinux Quay architectures](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fquay.io%2Fapi%2Fv1%2Frepository%2Fthebigman%2Frockylinux%2Ftag%2F%3FspecificTag%3Dlatest%26onlyActiveTags%3Dtrue&query=%24.tags%5B0%5D.child_manifest_count&label=Quay%20architectures&color=ee0000&style=flat-square&cacheSeconds=300)](https://quay.io/repository/thebigman/rockylinux?tab=tags) |

GHCR ve Docker Hub rozetleri toplam indirmeleri; Quay rozeti `latest` etiketinin mimari sayısını gösterir. Etiketleri ve mimarileri incelemek için rozetlere tıklayın. Sayaçlar registry’ye özeldir; önbellek nedeniyle güncellemeler gecikebilir.

```bash
docker pull ghcr.io/33mmrree-org/ubuntu:latest
docker pull docker.io/thebigman/ubuntu:latest
docker pull quay.io/thebigman/ubuntu:latest
```

<a id="versions-and-architectures"></a>

## Sürüm ve mimari referansları

[8 Ekim 2026 keşif planından](https://github.com/33mmRRee-org/Container/actions/runs/37741062225) sürüm/mimari referansları. Bunlar keşfedilen hedeflerdir; yayımlanmış mimarileri seçtiğiniz etiketin **OS/Arch** alanından veya OCI index'inden kontrol edin.

| Dağıtım | Sürümler | Platformlar — `linux/` önekiyle |
|---|---|---|
| Ubuntu | `22.04`, `24.04`, `26.04` | `amd64`, `arm/v7`, `arm64`, `ppc64le`, `riscv64`, `s390x` |
| Debian | `bookworm` | `386`, `amd64`, `arm/v7`, `arm64`, `ppc64le` |
| Debian | `trixie` | `386`, `amd64`, `arm/v5`, `arm/v7`, `arm64`, `ppc64le`, `riscv64`, `s390x` |
| CentOS Stream | `stream9`, `stream10` | `amd64`, `arm64`, `ppc64le`, `s390x` |
| Alpine | `3.21`, `3.22`, `3.23`, `3.24` | `386`, `amd64`, `arm/v6`, `arm/v7`, `arm64`, `ppc64le`, `riscv64`, `s390x` |
| Fedora | `43`, `44` | `amd64`, `arm64`, `ppc64le`, `s390x` |
| AlmaLinux | `8`, `9` | `386`, `amd64`, `arm64`, `ppc64le`, `s390x` |
| AlmaLinux | `10` | `386`, `amd64`, `amd64/v2`, `arm64`, `ppc64le`, `s390x` |
| Arch Linux | `rolling` | `amd64` |
| Rocky Linux | `8` | `amd64`, `arm64` |
| Rocky Linux | `9` | `amd64`, `arm64`, `ppc64le`, `s390x` |
| Rocky Linux | `10` | `amd64`, `arm64`, `ppc64le`, `riscv64`, `s390x` |

Mimari setleri sürüme göre değişebilir.

Bir etiketin gerçek mimarilerini inceleyin:

```bash
docker buildx imagetools inspect ghcr.io/33mmrree-org/ubuntu:latest
docker buildx imagetools inspect --raw ghcr.io/33mmrree-org/ubuntu:latest
```

<a id="quick-start"></a>

## Hızlı kullanım

Örneklerdeki `latest` yerine kullanmak istediğiniz **yayımlanmış etiketi** seçin. Herkese açık imajları indirmek için GHCR oturumu gerekmez.

### İndir ve çalıştır

```bash
docker pull ghcr.io/33mmrree-org/ubuntu:latest
docker run --rm -it ghcr.io/33mmrree-org/ubuntu:latest /bin/sh
```

Docker, multi-arch etiketten bilgisayarınızın mimarisine uygun imajı seçer.

### Mimari seç

```bash
docker pull --platform linux/arm64 ghcr.io/33mmrree-org/ubuntu:latest

docker run --rm --platform linux/arm64 \
  ghcr.io/33mmrree-org/ubuntu:latest \
  /bin/sh -c 'cat /etc/os-release'
```

Farklı işlemci ailesindeki bir imajı çalıştırmak için uygun emülasyon gerekir.

### Digest ile sabitle

```bash
docker image inspect --format '{{json .RepoDigests}}' \
  ghcr.io/33mmrree-org/ubuntu:latest

# <digest> yerine imajın SHA256 değerini yazın.
docker pull ghcr.io/33mmrree-org/ubuntu@sha256:<digest>
```

Sürüm etiketleri güncellenebilir; digest aynı imajı tekrar kullanmanızı sağlar.

### Kendi imajında kullan

```dockerfile
FROM ghcr.io/33mmrree-org/ubuntu:latest

COPY app/ /opt/app/
WORKDIR /opt/app
CMD ["/bin/sh"]
```

<a id="run-builds"></a>

## Build başlatma

[Actions → Build base images → Run workflow](https://github.com/33mmRRee-org/Container/actions/workflows/build-base-images.yml):

| Alan | Kullanım |
|---|---|
| `distribution` | `all` veya bir dağıtım adı. |
| `version` | `all` veya tam sürüm: `24.04`, `trixie`, `stream10`, `rolling` gibi. |
| `verify_only` | `true`: yeniden build/test, yayın yok. `false`: değişen veya eksik imajları build/test edip yayımla. |

Seçilen sürümün keşfedilen tüm mimarileri işlenir. GitHub CLI ile:

```bash
# Tüm dağıtımlarda değişen veya eksik imajları üret ve yayımla.
gh workflow run build-base-images.yml \
  --repo 33mmRRee-org/Container --ref main \
  -f distribution=all -f version=all -f verify_only=false

# Fedora imajlarını yalnızca build edip test et.
gh workflow run build-base-images.yml \
  --repo 33mmRRee-org/Container --ref main \
  -f distribution=Fedora -f version=all -f verify_only=true
```

Üstteki build rozeti son workflow sonucunu gösterir; yalnızca doğrulama yapılan bir çalışma imaj yayımlamaz.

<a id="oci-metadata"></a>

## Etiketler ve imaj bilgileri

| Referans | Anlam |
|---|---|
| `ubuntu:24.04`, `debian:trixie`, `centos:stream10` | İlgili sürümün test edilmiş mimarilerini içeren multi-arch etiket. |
| `latest` ve diğer alias'lar | Dağıtımın sürüm kataloğuna göre belirlenen etiketler. |
| `<image>@sha256:<digest>` | Değişmez imaj içeriği referansı. |

İmajın kaynak, sürüm ve üretim bilgileri OCI metadata'sında bulunur:

```bash
docker image inspect --format '{{json .Config.Labels}}' \
  ghcr.io/33mmrree-org/ubuntu:latest
```

`org.opencontainers.image.source` kaynak reçete deposunu, `org.opencontainers.image.version` sürümü ve `io.33mmrree-org.build.source` üretim kodunu gösterir. Multi-arch index ve mimari annotation'ları `docker buildx imagetools inspect --raw` ile okunabilir.
