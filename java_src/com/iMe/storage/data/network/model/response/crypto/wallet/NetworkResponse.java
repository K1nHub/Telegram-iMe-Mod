package com.iMe.storage.data.network.model.response.crypto.wallet;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: NetworkResponse.kt */
/* loaded from: classes3.dex */
public final class NetworkResponse {
    private final Long chainId;
    private final String color;
    private final ExplorerResponse explorer;

    /* renamed from: id */
    private final String f328id;
    private final String logo;
    private final String logoSmall;
    private final String name;
    private final String platform;
    private final String shortName;

    public final String component1() {
        return this.f328id;
    }

    public final String component2() {
        return this.platform;
    }

    public final String component3() {
        return this.name;
    }

    public final String component4() {
        return this.shortName;
    }

    public final String component5() {
        return this.color;
    }

    public final ExplorerResponse component6() {
        return this.explorer;
    }

    public final Long component7() {
        return this.chainId;
    }

    public final String component8() {
        return this.logo;
    }

    public final String component9() {
        return this.logoSmall;
    }

    public final NetworkResponse copy(String id, String platform, String name, String shortName, String color, ExplorerResponse explorer, Long l, String logo, String logoSmall) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(platform, "platform");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(shortName, "shortName");
        Intrinsics.checkNotNullParameter(color, "color");
        Intrinsics.checkNotNullParameter(explorer, "explorer");
        Intrinsics.checkNotNullParameter(logo, "logo");
        Intrinsics.checkNotNullParameter(logoSmall, "logoSmall");
        return new NetworkResponse(id, platform, name, shortName, color, explorer, l, logo, logoSmall);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NetworkResponse) {
            NetworkResponse networkResponse = (NetworkResponse) obj;
            return Intrinsics.areEqual(this.f328id, networkResponse.f328id) && Intrinsics.areEqual(this.platform, networkResponse.platform) && Intrinsics.areEqual(this.name, networkResponse.name) && Intrinsics.areEqual(this.shortName, networkResponse.shortName) && Intrinsics.areEqual(this.color, networkResponse.color) && Intrinsics.areEqual(this.explorer, networkResponse.explorer) && Intrinsics.areEqual(this.chainId, networkResponse.chainId) && Intrinsics.areEqual(this.logo, networkResponse.logo) && Intrinsics.areEqual(this.logoSmall, networkResponse.logoSmall);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = ((((((((((this.f328id.hashCode() * 31) + this.platform.hashCode()) * 31) + this.name.hashCode()) * 31) + this.shortName.hashCode()) * 31) + this.color.hashCode()) * 31) + this.explorer.hashCode()) * 31;
        Long l = this.chainId;
        return ((((hashCode + (l == null ? 0 : l.hashCode())) * 31) + this.logo.hashCode()) * 31) + this.logoSmall.hashCode();
    }

    public String toString() {
        return "NetworkResponse(id=" + this.f328id + ", platform=" + this.platform + ", name=" + this.name + ", shortName=" + this.shortName + ", color=" + this.color + ", explorer=" + this.explorer + ", chainId=" + this.chainId + ", logo=" + this.logo + ", logoSmall=" + this.logoSmall + ')';
    }

    public NetworkResponse(String id, String platform, String name, String shortName, String color, ExplorerResponse explorer, Long l, String logo, String logoSmall) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(platform, "platform");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(shortName, "shortName");
        Intrinsics.checkNotNullParameter(color, "color");
        Intrinsics.checkNotNullParameter(explorer, "explorer");
        Intrinsics.checkNotNullParameter(logo, "logo");
        Intrinsics.checkNotNullParameter(logoSmall, "logoSmall");
        this.f328id = id;
        this.platform = platform;
        this.name = name;
        this.shortName = shortName;
        this.color = color;
        this.explorer = explorer;
        this.chainId = l;
        this.logo = logo;
        this.logoSmall = logoSmall;
    }

    public final String getId() {
        return this.f328id;
    }

    public final String getPlatform() {
        return this.platform;
    }

    public final String getName() {
        return this.name;
    }

    public final String getShortName() {
        return this.shortName;
    }

    public final String getColor() {
        return this.color;
    }

    public final ExplorerResponse getExplorer() {
        return this.explorer;
    }

    public final Long getChainId() {
        return this.chainId;
    }

    public final String getLogo() {
        return this.logo;
    }

    public final String getLogoSmall() {
        return this.logoSmall;
    }

    /* compiled from: NetworkResponse.kt */
    /* loaded from: classes3.dex */
    public static final class ExplorerResponse {
        private final String logo;
        private final String name;
        private final PathTemplateResponse pathTemplate;
        private final String url;

        public static /* synthetic */ ExplorerResponse copy$default(ExplorerResponse explorerResponse, String str, String str2, String str3, PathTemplateResponse pathTemplateResponse, int i, Object obj) {
            if ((i & 1) != 0) {
                str = explorerResponse.name;
            }
            if ((i & 2) != 0) {
                str2 = explorerResponse.url;
            }
            if ((i & 4) != 0) {
                str3 = explorerResponse.logo;
            }
            if ((i & 8) != 0) {
                pathTemplateResponse = explorerResponse.pathTemplate;
            }
            return explorerResponse.copy(str, str2, str3, pathTemplateResponse);
        }

        public final String component1() {
            return this.name;
        }

        public final String component2() {
            return this.url;
        }

        public final String component3() {
            return this.logo;
        }

        public final PathTemplateResponse component4() {
            return this.pathTemplate;
        }

        public final ExplorerResponse copy(String name, String url, String logo, PathTemplateResponse pathTemplate) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(logo, "logo");
            Intrinsics.checkNotNullParameter(pathTemplate, "pathTemplate");
            return new ExplorerResponse(name, url, logo, pathTemplate);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof ExplorerResponse) {
                ExplorerResponse explorerResponse = (ExplorerResponse) obj;
                return Intrinsics.areEqual(this.name, explorerResponse.name) && Intrinsics.areEqual(this.url, explorerResponse.url) && Intrinsics.areEqual(this.logo, explorerResponse.logo) && Intrinsics.areEqual(this.pathTemplate, explorerResponse.pathTemplate);
            }
            return false;
        }

        public int hashCode() {
            return (((((this.name.hashCode() * 31) + this.url.hashCode()) * 31) + this.logo.hashCode()) * 31) + this.pathTemplate.hashCode();
        }

        public String toString() {
            return "ExplorerResponse(name=" + this.name + ", url=" + this.url + ", logo=" + this.logo + ", pathTemplate=" + this.pathTemplate + ')';
        }

        public ExplorerResponse(String name, String url, String logo, PathTemplateResponse pathTemplate) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(logo, "logo");
            Intrinsics.checkNotNullParameter(pathTemplate, "pathTemplate");
            this.name = name;
            this.url = url;
            this.logo = logo;
            this.pathTemplate = pathTemplate;
        }

        public final String getName() {
            return this.name;
        }

        public final String getUrl() {
            return this.url;
        }

        public final String getLogo() {
            return this.logo;
        }

        public final PathTemplateResponse getPathTemplate() {
            return this.pathTemplate;
        }

        /* compiled from: NetworkResponse.kt */
        /* loaded from: classes3.dex */
        public static final class PathTemplateResponse {
            private final String address;
            private final String token;

            /* renamed from: tx */
            private final String f329tx;

            public static /* synthetic */ PathTemplateResponse copy$default(PathTemplateResponse pathTemplateResponse, String str, String str2, String str3, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = pathTemplateResponse.address;
                }
                if ((i & 2) != 0) {
                    str2 = pathTemplateResponse.token;
                }
                if ((i & 4) != 0) {
                    str3 = pathTemplateResponse.f329tx;
                }
                return pathTemplateResponse.copy(str, str2, str3);
            }

            public final String component1() {
                return this.address;
            }

            public final String component2() {
                return this.token;
            }

            public final String component3() {
                return this.f329tx;
            }

            public final PathTemplateResponse copy(String address, String token, String tx) {
                Intrinsics.checkNotNullParameter(address, "address");
                Intrinsics.checkNotNullParameter(token, "token");
                Intrinsics.checkNotNullParameter(tx, "tx");
                return new PathTemplateResponse(address, token, tx);
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj instanceof PathTemplateResponse) {
                    PathTemplateResponse pathTemplateResponse = (PathTemplateResponse) obj;
                    return Intrinsics.areEqual(this.address, pathTemplateResponse.address) && Intrinsics.areEqual(this.token, pathTemplateResponse.token) && Intrinsics.areEqual(this.f329tx, pathTemplateResponse.f329tx);
                }
                return false;
            }

            public int hashCode() {
                return (((this.address.hashCode() * 31) + this.token.hashCode()) * 31) + this.f329tx.hashCode();
            }

            public String toString() {
                return "PathTemplateResponse(address=" + this.address + ", token=" + this.token + ", tx=" + this.f329tx + ')';
            }

            public PathTemplateResponse(String address, String token, String tx) {
                Intrinsics.checkNotNullParameter(address, "address");
                Intrinsics.checkNotNullParameter(token, "token");
                Intrinsics.checkNotNullParameter(tx, "tx");
                this.address = address;
                this.token = token;
                this.f329tx = tx;
            }

            public final String getAddress() {
                return this.address;
            }

            public final String getToken() {
                return this.token;
            }

            public final String getTx() {
                return this.f329tx;
            }
        }
    }
}
