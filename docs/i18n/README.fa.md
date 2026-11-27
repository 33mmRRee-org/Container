<div align="center">

**🌐 زبان‌ها**

[Türkçe](../../README.md) · [English](README.en.md) · [简体中文](README.zh-CN.md) · [繁體中文](README.zh-TW.md) · [日本語](README.ja.md) · [한국어](README.ko.md)

[Deutsch](README.de.md) · [Français](README.fr.md) · [Español](README.es.md) · [Português (Brasil)](README.pt-BR.md) · [Italiano](README.it.md) · [Русский](README.ru.md)

[Українська](README.uk.md) · [العربية](README.ar.md) · **فارسی** · [हिन्दी](README.hi.md) · [Bahasa Indonesia](README.id.md) · [Tiếng Việt](README.vi.md)

</div>

---

# 33mmRRee-org · Container

**ایمیج‌های پایهٔ کانتینر Linux — ساخت از دستورهای منبع، آزمون برای هر معماری و انتشار در GHCR، Docker Hub و Quay.**

[![وضعیت ساخت](https://github.com/33mmRRee-org/Container/actions/workflows/build-base-images.yml/badge.svg?branch=main)](https://github.com/33mmRRee-org/Container/actions/workflows/build-base-images.yml)
[![به‌روزرسانی منابع](https://github.com/33mmRRee-org/Cron/actions/workflows/mirror-container-sources.yml/badge.svg?branch=main)](https://github.com/33mmRRee-org/Cron/actions/workflows/mirror-container-sources.yml)
[![رجیستری: GHCR](https://img.shields.io/badge/registry-GHCR-0969da?style=flat-square)](https://github.com/orgs/33mmRRee-org/packages?ecosystem=container)
[![رجیستری: Docker Hub](https://img.shields.io/badge/registry-Docker_Hub-2496ed?style=flat-square)](https://hub.docker.com/u/thebigman)
[![رجیستری: Quay](https://img.shields.io/badge/registry-Quay-ee0000?style=flat-square)](https://quay.io/organization/thebigman)

**8 توزیع** · **نسخه‌ها و معماری‌های پویا** · **ساخت → آزمون → انتشار**

[ایمیج‌ها](#images-and-downloads) · [معماری‌ها](#versions-and-architectures) · [استفاده](#quick-start) · [شروع ساخت](#run-builds) · [اطلاعات ایمیج](#oci-metadata)

---

<a id="images-and-downloads"></a>

## ایمیج‌ها و دانلودها

| توزیع | GHCR | Docker Hub | Quay |
|---|---|---|---|
| [Ubuntu](https://github.com/33mmRRee-org/Ubuntu) | [![شمار دانلودهای ubuntu از GHCR](https://img.shields.io/badge/dynamic/regex?url=https%3A%2F%2Fgithub.com%2Forgs%2F33mmRRee-org%2Fpackages%2Fcontainer%2Fpackage%2Fubuntu&search=Total%20downloads%3C%2Fspan%3E%5Cs%2A%3Ch3%20title%3D%22%28%5B0-9%2C%5D%2B%29%22%3E&replace=%241&label=&logo=github&color=0969da&style=flat-square&cacheSeconds=300)](https://github.com/orgs/33mmRRee-org/packages/container/package/ubuntu) | [![ubuntu Docker Hub pulls](https://img.shields.io/docker/pulls/thebigman/ubuntu?label=&logo=docker&style=flat-square)](https://hub.docker.com/r/thebigman/ubuntu) | [![ubuntu Quay architectures](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fquay.io%2Fapi%2Fv1%2Frepository%2Fthebigman%2Fubuntu%2Ftag%2F%3FspecificTag%3Dlatest%26onlyActiveTags%3Dtrue&query=%24.tags%5B0%5D.child_manifest_count&label=&logo=redhat&color=ee0000&style=flat-square&cacheSeconds=300)](https://quay.io/repository/thebigman/ubuntu?tab=tags) |
| [Debian](https://github.com/33mmRRee-org/Debian) | [![شمار دانلودهای debian از GHCR](https://img.shields.io/badge/dynamic/regex?url=https%3A%2F%2Fgithub.com%2Forgs%2F33mmRRee-org%2Fpackages%2Fcontainer%2Fpackage%2Fdebian&search=Total%20downloads%3C%2Fspan%3E%5Cs%2A%3Ch3%20title%3D%22%28%5B0-9%2C%5D%2B%29%22%3E&replace=%241&label=&logo=github&color=0969da&style=flat-square&cacheSeconds=300)](https://github.com/orgs/33mmRRee-org/packages/container/package/debian) | [![debian Docker Hub pulls](https://img.shields.io/docker/pulls/thebigman/debian?label=&logo=docker&style=flat-square)](https://hub.docker.com/r/thebigman/debian) | [![debian Quay architectures](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fquay.io%2Fapi%2Fv1%2Frepository%2Fthebigman%2Fdebian%2Ftag%2F%3FspecificTag%3Dlatest%26onlyActiveTags%3Dtrue&query=%24.tags%5B0%5D.child_manifest_count&label=&logo=redhat&color=ee0000&style=flat-square&cacheSeconds=300)](https://quay.io/repository/thebigman/debian?tab=tags) |
| [CentOS Stream](https://github.com/33mmRRee-org/Centos) | [![شمار دانلودهای centos از GHCR](https://img.shields.io/badge/dynamic/regex?url=https%3A%2F%2Fgithub.com%2Forgs%2F33mmRRee-org%2Fpackages%2Fcontainer%2Fpackage%2Fcentos&search=Total%20downloads%3C%2Fspan%3E%5Cs%2A%3Ch3%20title%3D%22%28%5B0-9%2C%5D%2B%29%22%3E&replace=%241&label=&logo=github&color=0969da&style=flat-square&cacheSeconds=300)](https://github.com/orgs/33mmRRee-org/packages/container/package/centos) | [![centos Docker Hub pulls](https://img.shields.io/docker/pulls/thebigman/centos?label=&logo=docker&style=flat-square)](https://hub.docker.com/r/thebigman/centos) | [![centos Quay architectures](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fquay.io%2Fapi%2Fv1%2Frepository%2Fthebigman%2Fcentos%2Ftag%2F%3FspecificTag%3Dlatest%26onlyActiveTags%3Dtrue&query=%24.tags%5B0%5D.child_manifest_count&label=&logo=redhat&color=ee0000&style=flat-square&cacheSeconds=300)](https://quay.io/repository/thebigman/centos?tab=tags) |
| [Alpine](https://github.com/33mmRRee-org/Alpine) | [![شمار دانلودهای alpine از GHCR](https://img.shields.io/badge/dynamic/regex?url=https%3A%2F%2Fgithub.com%2Forgs%2F33mmRRee-org%2Fpackages%2Fcontainer%2Fpackage%2Falpine&search=Total%20downloads%3C%2Fspan%3E%5Cs%2A%3Ch3%20title%3D%22%28%5B0-9%2C%5D%2B%29%22%3E&replace=%241&label=&logo=github&color=0969da&style=flat-square&cacheSeconds=300)](https://github.com/orgs/33mmRRee-org/packages/container/package/alpine) | [![alpine Docker Hub pulls](https://img.shields.io/docker/pulls/thebigman/alpine?label=&logo=docker&style=flat-square)](https://hub.docker.com/r/thebigman/alpine) | [![alpine Quay architectures](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fquay.io%2Fapi%2Fv1%2Frepository%2Fthebigman%2Falpine%2Ftag%2F%3FspecificTag%3Dlatest%26onlyActiveTags%3Dtrue&query=%24.tags%5B0%5D.child_manifest_count&label=&logo=redhat&color=ee0000&style=flat-square&cacheSeconds=300)](https://quay.io/repository/thebigman/alpine?tab=tags) |
| [Fedora](https://github.com/33mmRRee-org/Fedora) | [![شمار دانلودهای fedora از GHCR](https://img.shields.io/badge/dynamic/regex?url=https%3A%2F%2Fgithub.com%2Forgs%2F33mmRRee-org%2Fpackages%2Fcontainer%2Fpackage%2Ffedora&search=Total%20downloads%3C%2Fspan%3E%5Cs%2A%3Ch3%20title%3D%22%28%5B0-9%2C%5D%2B%29%22%3E&replace=%241&label=&logo=github&color=0969da&style=flat-square&cacheSeconds=300)](https://github.com/orgs/33mmRRee-org/packages/container/package/fedora) | [![fedora Docker Hub pulls](https://img.shields.io/docker/pulls/thebigman/fedora?label=&logo=docker&style=flat-square)](https://hub.docker.com/r/thebigman/fedora) | [![fedora Quay architectures](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fquay.io%2Fapi%2Fv1%2Frepository%2Fthebigman%2Ffedora%2Ftag%2F%3FspecificTag%3Dlatest%26onlyActiveTags%3Dtrue&query=%24.tags%5B0%5D.child_manifest_count&label=&logo=redhat&color=ee0000&style=flat-square&cacheSeconds=300)](https://quay.io/repository/thebigman/fedora?tab=tags) |
| [AlmaLinux](https://github.com/33mmRRee-org/AlmaLinux) | [![شمار دانلودهای almalinux از GHCR](https://img.shields.io/badge/dynamic/regex?url=https%3A%2F%2Fgithub.com%2Forgs%2F33mmRRee-org%2Fpackages%2Fcontainer%2Fpackage%2Falmalinux&search=Total%20downloads%3C%2Fspan%3E%5Cs%2A%3Ch3%20title%3D%22%28%5B0-9%2C%5D%2B%29%22%3E&replace=%241&label=&logo=github&color=0969da&style=flat-square&cacheSeconds=300)](https://github.com/orgs/33mmRRee-org/packages/container/package/almalinux) | [![almalinux Docker Hub pulls](https://img.shields.io/docker/pulls/thebigman/almalinux?label=&logo=docker&style=flat-square)](https://hub.docker.com/r/thebigman/almalinux) | [![almalinux Quay architectures](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fquay.io%2Fapi%2Fv1%2Frepository%2Fthebigman%2Falmalinux%2Ftag%2F%3FspecificTag%3Dlatest%26onlyActiveTags%3Dtrue&query=%24.tags%5B0%5D.child_manifest_count&label=&logo=redhat&color=ee0000&style=flat-square&cacheSeconds=300)](https://quay.io/repository/thebigman/almalinux?tab=tags) |
| [Arch Linux](https://github.com/33mmRRee-org/ArchLinux) | [![شمار دانلودهای archlinux از GHCR](https://img.shields.io/badge/dynamic/regex?url=https%3A%2F%2Fgithub.com%2Forgs%2F33mmRRee-org%2Fpackages%2Fcontainer%2Fpackage%2Farchlinux&search=Total%20downloads%3C%2Fspan%3E%5Cs%2A%3Ch3%20title%3D%22%28%5B0-9%2C%5D%2B%29%22%3E&replace=%241&label=&logo=github&color=0969da&style=flat-square&cacheSeconds=300)](https://github.com/orgs/33mmRRee-org/packages/container/package/archlinux) | [![archlinux Docker Hub pulls](https://img.shields.io/docker/pulls/thebigman/archlinux?label=&logo=docker&style=flat-square)](https://hub.docker.com/r/thebigman/archlinux) | [![archlinux Quay architectures](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fquay.io%2Fapi%2Fv1%2Frepository%2Fthebigman%2Farchlinux%2Ftag%2F%3FspecificTag%3Dlatest%26onlyActiveTags%3Dtrue&query=%24.tags%5B0%5D.child_manifest_count&label=&logo=redhat&color=ee0000&style=flat-square&cacheSeconds=300)](https://quay.io/repository/thebigman/archlinux?tab=tags) |
| [Rocky Linux](https://github.com/33mmRRee-org/RockyLinux) | [![شمار دانلودهای rockylinux از GHCR](https://img.shields.io/badge/dynamic/regex?url=https%3A%2F%2Fgithub.com%2Forgs%2F33mmRRee-org%2Fpackages%2Fcontainer%2Fpackage%2Frockylinux&search=Total%20downloads%3C%2Fspan%3E%5Cs%2A%3Ch3%20title%3D%22%28%5B0-9%2C%5D%2B%29%22%3E&replace=%241&label=&logo=github&color=0969da&style=flat-square&cacheSeconds=300)](https://github.com/orgs/33mmRRee-org/packages/container/package/rockylinux) | [![rockylinux Docker Hub pulls](https://img.shields.io/docker/pulls/thebigman/rockylinux?label=&logo=docker&style=flat-square)](https://hub.docker.com/r/thebigman/rockylinux) | [![rockylinux Quay architectures](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fquay.io%2Fapi%2Fv1%2Frepository%2Fthebigman%2Frockylinux%2Ftag%2F%3FspecificTag%3Dlatest%26onlyActiveTags%3Dtrue&query=%24.tags%5B0%5D.child_manifest_count&label=&logo=redhat&color=ee0000&style=flat-square&cacheSeconds=300)](https://quay.io/repository/thebigman/rockylinux?tab=tags) |

نشان‌های GHCR و Docker Hub مجموع دانلودها را نشان می‌دهند؛ نشان Quay تعداد معماری‌های برچسب `latest` را نمایش می‌دهد. برای مشاهدهٔ برچسب‌ها و معماری‌ها روی نشان‌ها کلیک کنید. شمارنده‌ها مخصوص هر رجیستری هستند؛ به‌دلیل حافظهٔ نهان، به‌روزرسانی‌ها ممکن است با تأخیر نمایش داده شوند.

```bash
docker pull ghcr.io/33mmrree-org/ubuntu:latest
docker pull docker.io/thebigman/ubuntu:latest
docker pull quay.io/thebigman/ubuntu:latest
```

<a id="versions-and-architectures"></a>

## مرجع نسخه‌ها و معماری‌ها

نسخه‌ها و پلتفرم‌هایی که برای هر توزیع ساخته می‌شود. معماری‌های منتشرشده را در فیلد OS/Arch برچسب انتخابی یا در نمایهٔ OCI بررسی کنید.

| توزیع | نسخه‌ها | سکوها — با پیشوند `linux/` |
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

مجموعهٔ معماری‌ها ممکن است بسته به نسخه متفاوت باشد.

معماری‌های واقعی یک برچسب را بررسی کنید:

```bash
docker buildx imagetools inspect ghcr.io/33mmrree-org/ubuntu:latest
docker buildx imagetools inspect --raw ghcr.io/33mmrree-org/ubuntu:latest
```

<a id="quick-start"></a>

## استفادهٔ سریع

به‌جای `latest` در مثال‌ها، **برچسب منتشرشده‌ای** را که می‌خواهید استفاده کنید انتخاب کنید. برای دانلود ایمیج‌های عمومی نیازی به ورود به GHCR نیست.

### دانلود و اجرا

```bash
docker pull ghcr.io/33mmrree-org/ubuntu:latest
docker run --rm -it ghcr.io/33mmrree-org/ubuntu:latest /bin/sh
```

Docker از برچسب چندمعماری، ایمیج مناسب معماری رایانهٔ شما را انتخاب می‌کند.

### انتخاب معماری

```bash
docker pull --platform linux/arm64 ghcr.io/33mmrree-org/ubuntu:latest

docker run --rm --platform linux/arm64 \
  ghcr.io/33mmrree-org/ubuntu:latest \
  /bin/sh -c 'cat /etc/os-release'
```

برای اجرای ایمیجی از خانوادهٔ پردازندهٔ متفاوت، به شبیه‌سازی مناسب نیاز است.

### ثابت کردن با چکیده

```bash
docker image inspect --format '{{json .RepoDigests}}' \
  ghcr.io/33mmrree-org/ubuntu:latest

# به‌جای <digest> مقدار SHA256 ایمیج را بنویسید.
docker pull ghcr.io/33mmrree-org/ubuntu@sha256:<digest>
```

برچسب‌های نسخه ممکن است به‌روز شوند؛ چکیده امکان استفادهٔ دوباره از همان ایمیج را فراهم می‌کند.

### استفاده در ایمیج خودتان

```dockerfile
FROM ghcr.io/33mmrree-org/ubuntu:latest

COPY app/ /opt/app/
WORKDIR /opt/app
CMD ["/bin/sh"]
```

<a id="run-builds"></a>

## شروع ساخت

[اقدام‌ها → ساخت ایمیج‌های پایه → اجرای گردش کار](https://github.com/33mmRRee-org/Container/actions/workflows/build-base-images.yml):

| فیلد | کاربرد |
|---|---|
| `distribution` | `all` یا نام یک توزیع. |
| `version` | `all` یا نسخهٔ دقیق، مانند `24.04`، `trixie`، `stream10`، `rolling`. |
| `verify_only` | `true`: ساخت و آزمون دوباره، بدون انتشار. `false`: ساخت، آزمون و انتشار ایمیج‌های تغییریافته یا ناموجود. |

همهٔ معماری‌های شناسایی‌شدهٔ نسخهٔ انتخابی پردازش می‌شوند. با GitHub CLI:

```bash
# ایمیج‌های تغییریافته یا ناموجود را برای همهٔ توزیع‌ها بسازید و منتشر کنید.
gh workflow run build-base-images.yml \
  --repo 33mmRRee-org/Container --ref main \
  -f distribution=all -f version=all -f verify_only=false

# ایمیج‌های Fedora را فقط بسازید و آزمایش کنید.
gh workflow run build-base-images.yml \
  --repo 33mmRRee-org/Container --ref main \
  -f distribution=Fedora -f version=all -f verify_only=true
```

نشان ساخت در بالا، نتیجهٔ آخرین گردش کار را نشان می‌دهد؛ اجرایی که فقط برای اعتبارسنجی باشد، ایمیجی منتشر نمی‌کند.

<a id="oci-metadata"></a>

## برچسب‌ها و اطلاعات ایمیج

| مرجع | معنی |
|---|---|
| `ubuntu:24.04`, `debian:trixie`, `centos:stream10` | برچسب چندمعماری که معماری‌های آزمایش‌شدهٔ نسخهٔ مربوطه را در بر دارد. |
| `latest` و نام‌های مستعار دیگر | برچسب‌هایی که بر اساس فهرست نسخه‌های توزیع تعیین می‌شوند. |
| `<image>@sha256:<digest>` | مرجع تغییرناپذیر محتوای ایمیج. |

اطلاعات منبع، نسخه و ساخت ایمیج در فرادادهٔ OCI قرار دارند:

```bash
docker image inspect --format '{{json .Config.Labels}}' \
  ghcr.io/33mmrree-org/ubuntu:latest
```

`org.opencontainers.image.source` مخزن دستور منبع، `org.opencontainers.image.version` نسخه و `io.33mmrree-org.build.source` کد ساخت را نشان می‌دهد. نمایهٔ چندمعماری و توضیحات معماری‌ها با `docker buildx imagetools inspect --raw` قابل خواندن هستند.
