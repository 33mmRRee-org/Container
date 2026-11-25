<div align="center">

**🌐 Языки**

[Türkçe](../../README.md) · [English](README.en.md) · [简体中文](README.zh-CN.md) · [繁體中文](README.zh-TW.md) · [日本語](README.ja.md) · [한국어](README.ko.md)

[Deutsch](README.de.md) · [Français](README.fr.md) · [Español](README.es.md) · [Português (Brasil)](README.pt-BR.md) · [Italiano](README.it.md) · **Русский**

[Українська](README.uk.md) · [العربية](README.ar.md) · [فارسی](README.fa.md) · [हिन्दी](README.hi.md) · [Bahasa Indonesia](README.id.md) · [Tiếng Việt](README.vi.md)

</div>

---

# 33mmRRee-org · Container

**Базовые контейнерные образы Linux — сборка по исходным рецептам, тестирование каждой архитектуры и публикация в GHCR, Docker Hub и Quay.**

[![Состояние сборки](https://github.com/33mmRRee-org/Container/actions/workflows/build-base-images.yml/badge.svg?branch=main)](https://github.com/33mmRRee-org/Container/actions/workflows/build-base-images.yml)
[![Обновления источников](https://github.com/33mmRRee-org/Cron/actions/workflows/mirror-container-sources.yml/badge.svg?branch=main)](https://github.com/33mmRRee-org/Cron/actions/workflows/mirror-container-sources.yml)
[![Реестр: GHCR](https://img.shields.io/badge/registry-GHCR-0969da?style=flat-square)](https://github.com/orgs/33mmRRee-org/packages?ecosystem=container)
[![Реестр: Docker Hub](https://img.shields.io/badge/registry-Docker_Hub-2496ed?style=flat-square)](https://hub.docker.com/u/thebigman)
[![Реестр: Quay](https://img.shields.io/badge/registry-Quay-ee0000?style=flat-square)](https://quay.io/organization/thebigman)

**8 дистрибутивов** · **Динамические версии и архитектуры** · **Сборка → Тестирование → Публикация**

[Образы](#images-and-downloads) · [Архитектуры](#versions-and-architectures) · [Использование](#quick-start) · [Запуск сборки](#run-builds) · [Сведения об образах](#oci-metadata)

---

<a id="images-and-downloads"></a>

## Образы и загрузки

| Дистрибутив | GHCR | Docker Hub | Quay |
|---|---|---|---|
| [Ubuntu](https://github.com/33mmRRee-org/Ubuntu) | [![ubuntu: число загрузок из GHCR](https://img.shields.io/badge/dynamic/regex?url=https%3A%2F%2Fgithub.com%2Forgs%2F33mmRRee-org%2Fpackages%2Fcontainer%2Fpackage%2Fubuntu&search=Total%20downloads%3C%2Fspan%3E%5Cs%2A%3Ch3%20title%3D%22%28%5B0-9%2C%5D%2B%29%22%3E&replace=%241&label=&logo=github&color=0969da&style=flat-square&cacheSeconds=300)](https://github.com/orgs/33mmRRee-org/packages/container/package/ubuntu) | [![ubuntu Docker Hub pulls](https://img.shields.io/docker/pulls/thebigman/ubuntu?label=&logo=docker&style=flat-square)](https://hub.docker.com/r/thebigman/ubuntu) | [![ubuntu Quay architectures](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fquay.io%2Fapi%2Fv1%2Frepository%2Fthebigman%2Fubuntu%2Ftag%2F%3FspecificTag%3Dlatest%26onlyActiveTags%3Dtrue&query=%24.tags%5B0%5D.child_manifest_count&label=&logo=redhat&color=ee0000&style=flat-square&cacheSeconds=300)](https://quay.io/repository/thebigman/ubuntu?tab=tags) |
| [Debian](https://github.com/33mmRRee-org/Debian) | [![debian: число загрузок из GHCR](https://img.shields.io/badge/dynamic/regex?url=https%3A%2F%2Fgithub.com%2Forgs%2F33mmRRee-org%2Fpackages%2Fcontainer%2Fpackage%2Fdebian&search=Total%20downloads%3C%2Fspan%3E%5Cs%2A%3Ch3%20title%3D%22%28%5B0-9%2C%5D%2B%29%22%3E&replace=%241&label=&logo=github&color=0969da&style=flat-square&cacheSeconds=300)](https://github.com/orgs/33mmRRee-org/packages/container/package/debian) | [![debian Docker Hub pulls](https://img.shields.io/docker/pulls/thebigman/debian?label=&logo=docker&style=flat-square)](https://hub.docker.com/r/thebigman/debian) | [![debian Quay architectures](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fquay.io%2Fapi%2Fv1%2Frepository%2Fthebigman%2Fdebian%2Ftag%2F%3FspecificTag%3Dlatest%26onlyActiveTags%3Dtrue&query=%24.tags%5B0%5D.child_manifest_count&label=&logo=redhat&color=ee0000&style=flat-square&cacheSeconds=300)](https://quay.io/repository/thebigman/debian?tab=tags) |
| [CentOS Stream](https://github.com/33mmRRee-org/Centos) | [![centos: число загрузок из GHCR](https://img.shields.io/badge/dynamic/regex?url=https%3A%2F%2Fgithub.com%2Forgs%2F33mmRRee-org%2Fpackages%2Fcontainer%2Fpackage%2Fcentos&search=Total%20downloads%3C%2Fspan%3E%5Cs%2A%3Ch3%20title%3D%22%28%5B0-9%2C%5D%2B%29%22%3E&replace=%241&label=&logo=github&color=0969da&style=flat-square&cacheSeconds=300)](https://github.com/orgs/33mmRRee-org/packages/container/package/centos) | [![centos Docker Hub pulls](https://img.shields.io/docker/pulls/thebigman/centos?label=&logo=docker&style=flat-square)](https://hub.docker.com/r/thebigman/centos) | [![centos Quay architectures](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fquay.io%2Fapi%2Fv1%2Frepository%2Fthebigman%2Fcentos%2Ftag%2F%3FspecificTag%3Dlatest%26onlyActiveTags%3Dtrue&query=%24.tags%5B0%5D.child_manifest_count&label=&logo=redhat&color=ee0000&style=flat-square&cacheSeconds=300)](https://quay.io/repository/thebigman/centos?tab=tags) |
| [Alpine](https://github.com/33mmRRee-org/Alpine) | [![alpine: число загрузок из GHCR](https://img.shields.io/badge/dynamic/regex?url=https%3A%2F%2Fgithub.com%2Forgs%2F33mmRRee-org%2Fpackages%2Fcontainer%2Fpackage%2Falpine&search=Total%20downloads%3C%2Fspan%3E%5Cs%2A%3Ch3%20title%3D%22%28%5B0-9%2C%5D%2B%29%22%3E&replace=%241&label=&logo=github&color=0969da&style=flat-square&cacheSeconds=300)](https://github.com/orgs/33mmRRee-org/packages/container/package/alpine) | [![alpine Docker Hub pulls](https://img.shields.io/docker/pulls/thebigman/alpine?label=&logo=docker&style=flat-square)](https://hub.docker.com/r/thebigman/alpine) | [![alpine Quay architectures](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fquay.io%2Fapi%2Fv1%2Frepository%2Fthebigman%2Falpine%2Ftag%2F%3FspecificTag%3Dlatest%26onlyActiveTags%3Dtrue&query=%24.tags%5B0%5D.child_manifest_count&label=&logo=redhat&color=ee0000&style=flat-square&cacheSeconds=300)](https://quay.io/repository/thebigman/alpine?tab=tags) |
| [Fedora](https://github.com/33mmRRee-org/Fedora) | [![fedora: число загрузок из GHCR](https://img.shields.io/badge/dynamic/regex?url=https%3A%2F%2Fgithub.com%2Forgs%2F33mmRRee-org%2Fpackages%2Fcontainer%2Fpackage%2Ffedora&search=Total%20downloads%3C%2Fspan%3E%5Cs%2A%3Ch3%20title%3D%22%28%5B0-9%2C%5D%2B%29%22%3E&replace=%241&label=&logo=github&color=0969da&style=flat-square&cacheSeconds=300)](https://github.com/orgs/33mmRRee-org/packages/container/package/fedora) | [![fedora Docker Hub pulls](https://img.shields.io/docker/pulls/thebigman/fedora?label=&logo=docker&style=flat-square)](https://hub.docker.com/r/thebigman/fedora) | [![fedora Quay architectures](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fquay.io%2Fapi%2Fv1%2Frepository%2Fthebigman%2Ffedora%2Ftag%2F%3FspecificTag%3Dlatest%26onlyActiveTags%3Dtrue&query=%24.tags%5B0%5D.child_manifest_count&label=&logo=redhat&color=ee0000&style=flat-square&cacheSeconds=300)](https://quay.io/repository/thebigman/fedora?tab=tags) |
| [AlmaLinux](https://github.com/33mmRRee-org/AlmaLinux) | [![almalinux: число загрузок из GHCR](https://img.shields.io/badge/dynamic/regex?url=https%3A%2F%2Fgithub.com%2Forgs%2F33mmRRee-org%2Fpackages%2Fcontainer%2Fpackage%2Falmalinux&search=Total%20downloads%3C%2Fspan%3E%5Cs%2A%3Ch3%20title%3D%22%28%5B0-9%2C%5D%2B%29%22%3E&replace=%241&label=&logo=github&color=0969da&style=flat-square&cacheSeconds=300)](https://github.com/orgs/33mmRRee-org/packages/container/package/almalinux) | [![almalinux Docker Hub pulls](https://img.shields.io/docker/pulls/thebigman/almalinux?label=&logo=docker&style=flat-square)](https://hub.docker.com/r/thebigman/almalinux) | [![almalinux Quay architectures](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fquay.io%2Fapi%2Fv1%2Frepository%2Fthebigman%2Falmalinux%2Ftag%2F%3FspecificTag%3Dlatest%26onlyActiveTags%3Dtrue&query=%24.tags%5B0%5D.child_manifest_count&label=&logo=redhat&color=ee0000&style=flat-square&cacheSeconds=300)](https://quay.io/repository/thebigman/almalinux?tab=tags) |
| [Arch Linux](https://github.com/33mmRRee-org/ArchLinux) | [![archlinux: число загрузок из GHCR](https://img.shields.io/badge/dynamic/regex?url=https%3A%2F%2Fgithub.com%2Forgs%2F33mmRRee-org%2Fpackages%2Fcontainer%2Fpackage%2Farchlinux&search=Total%20downloads%3C%2Fspan%3E%5Cs%2A%3Ch3%20title%3D%22%28%5B0-9%2C%5D%2B%29%22%3E&replace=%241&label=&logo=github&color=0969da&style=flat-square&cacheSeconds=300)](https://github.com/orgs/33mmRRee-org/packages/container/package/archlinux) | [![archlinux Docker Hub pulls](https://img.shields.io/docker/pulls/thebigman/archlinux?label=&logo=docker&style=flat-square)](https://hub.docker.com/r/thebigman/archlinux) | [![archlinux Quay architectures](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fquay.io%2Fapi%2Fv1%2Frepository%2Fthebigman%2Farchlinux%2Ftag%2F%3FspecificTag%3Dlatest%26onlyActiveTags%3Dtrue&query=%24.tags%5B0%5D.child_manifest_count&label=&logo=redhat&color=ee0000&style=flat-square&cacheSeconds=300)](https://quay.io/repository/thebigman/archlinux?tab=tags) |
| [Rocky Linux](https://github.com/33mmRRee-org/RockyLinux) | [![rockylinux: число загрузок из GHCR](https://img.shields.io/badge/dynamic/regex?url=https%3A%2F%2Fgithub.com%2Forgs%2F33mmRRee-org%2Fpackages%2Fcontainer%2Fpackage%2Frockylinux&search=Total%20downloads%3C%2Fspan%3E%5Cs%2A%3Ch3%20title%3D%22%28%5B0-9%2C%5D%2B%29%22%3E&replace=%241&label=&logo=github&color=0969da&style=flat-square&cacheSeconds=300)](https://github.com/orgs/33mmRRee-org/packages/container/package/rockylinux) | [![rockylinux Docker Hub pulls](https://img.shields.io/docker/pulls/thebigman/rockylinux?label=&logo=docker&style=flat-square)](https://hub.docker.com/r/thebigman/rockylinux) | [![rockylinux Quay architectures](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fquay.io%2Fapi%2Fv1%2Frepository%2Fthebigman%2Frockylinux%2Ftag%2F%3FspecificTag%3Dlatest%26onlyActiveTags%3Dtrue&query=%24.tags%5B0%5D.child_manifest_count&label=&logo=redhat&color=ee0000&style=flat-square&cacheSeconds=300)](https://quay.io/repository/thebigman/rockylinux?tab=tags) |

Значки GHCR и Docker Hub показывают общее число загрузок; значок Quay показывает число архитектур для тега `latest`. Нажмите на значки, чтобы посмотреть теги и архитектуры. Счётчики относятся к отдельным реестрам; из-за кэширования обновления могут задерживаться.

```bash
docker pull ghcr.io/33mmrree-org/ubuntu:latest
docker pull docker.io/thebigman/ubuntu:latest
docker pull quay.io/thebigman/ubuntu:latest
```

<a id="versions-and-architectures"></a>

## Справочные версии и архитектуры

Справочные версии и архитектуры из [плана обнаружения от 8 октября 2026 года](https://github.com/33mmRRee-org/Container/actions/runs/37741062225). Это обнаруженные цели; проверяйте опубликованные архитектуры в поле **OS/Arch** выбранного тега или в индексе OCI.

| Дистрибутив | Версии | Платформы — с префиксом `linux/` |
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

Наборы архитектур могут различаться в зависимости от версии.

Просмотрите фактические архитектуры тега:

```bash
docker buildx imagetools inspect ghcr.io/33mmrree-org/ubuntu:latest
docker buildx imagetools inspect --raw ghcr.io/33mmrree-org/ubuntu:latest
```

<a id="quick-start"></a>

## Быстрое начало

Вместо `latest` в примерах выберите **опубликованный тег**, который хотите использовать. Для загрузки общедоступных образов вход в GHCR не требуется.

### Загрузить и запустить

```bash
docker pull ghcr.io/33mmrree-org/ubuntu:latest
docker run --rm -it ghcr.io/33mmrree-org/ubuntu:latest /bin/sh
```

Docker выбирает из тега для нескольких архитектур образ, соответствующий архитектуре вашего компьютера.

### Выбрать архитектуру

```bash
docker pull --platform linux/arm64 ghcr.io/33mmrree-org/ubuntu:latest

docker run --rm --platform linux/arm64 \
  ghcr.io/33mmrree-org/ubuntu:latest \
  /bin/sh -c 'cat /etc/os-release'
```

Для запуска образа другой процессорной архитектуры требуется соответствующая эмуляция.

### Закрепить по дайджесту

```bash
docker image inspect --format '{{json .RepoDigests}}' \
  ghcr.io/33mmrree-org/ubuntu:latest

# Замените <digest> значением SHA256 образа.
docker pull ghcr.io/33mmrree-org/ubuntu@sha256:<digest>
```

Теги версий могут обновляться; дайджест позволяет повторно использовать тот же образ.

### Использовать в собственном образе

```dockerfile
FROM ghcr.io/33mmrree-org/ubuntu:latest

COPY app/ /opt/app/
WORKDIR /opt/app
CMD ["/bin/sh"]
```

<a id="run-builds"></a>

## Запуск сборки

[Действия → Сборка базовых образов → Запустить рабочий процесс](https://github.com/33mmRRee-org/Container/actions/workflows/build-base-images.yml):

| Поле | Использование |
|---|---|
| `distribution` | `all` или название дистрибутива. |
| `version` | `all` или точная версия, например `24.04`, `trixie`, `stream10`, `rolling`. |
| `verify_only` | `true`: повторная сборка и тестирование без публикации. `false`: сборка, тестирование и публикация изменённых или отсутствующих образов. |

Обрабатываются все обнаруженные архитектуры выбранной версии. Через GitHub CLI:

```bash
# Собрать и опубликовать изменённые или отсутствующие образы всех дистрибутивов.
gh workflow run build-base-images.yml \
  --repo 33mmRRee-org/Container --ref main \
  -f distribution=all -f version=all -f verify_only=false

# Только собрать и протестировать образы Fedora.
gh workflow run build-base-images.yml \
  --repo 33mmRRee-org/Container --ref main \
  -f distribution=Fedora -f version=all -f verify_only=true
```

Значок сборки вверху показывает результат последнего рабочего процесса; запуск только для проверки не публикует образы.

<a id="oci-metadata"></a>

## Теги и сведения об образах

| Ссылка | Значение |
|---|---|
| `ubuntu:24.04`, `debian:trixie`, `centos:stream10` | Тег для нескольких архитектур, содержащий протестированные архитектуры соответствующей версии. |
| `latest` и другие псевдонимы | Теги, определяемые каталогом версий дистрибутива. |
| `<image>@sha256:<digest>` | Неизменяемая ссылка на содержимое образа. |

Сведения об источнике, версии и сборке образа находятся в метаданных OCI:

```bash
docker image inspect --format '{{json .Config.Labels}}' \
  ghcr.io/33mmrree-org/ubuntu:latest
```

`org.opencontainers.image.source` указывает репозиторий исходного рецепта, `org.opencontainers.image.version` — версию, а `io.33mmrree-org.build.source` — код сборки. Индекс для нескольких архитектур и аннотации архитектур можно прочитать командой `docker buildx imagetools inspect --raw`.
