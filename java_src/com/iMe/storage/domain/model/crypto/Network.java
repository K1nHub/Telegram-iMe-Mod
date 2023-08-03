package com.iMe.storage.domain.model.crypto;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
/* compiled from: Network.kt */
/* loaded from: classes3.dex */
public final class Network {
    public static final Companion Companion = new Companion(null);
    private static final String PATH_TEMPLATE_ADDRESS_PART = "{address}";
    private static final String PATH_TEMPLATE_HASH_PART = "{hash}";
    private final BlockchainType blockchainType;
    private final Long chainId;
    private final String colorHex;
    private final Explorer explorer;
    private final String fullName;

    /* renamed from: id */
    private final String f406id;
    private final String logoUrl;
    private final String shortName;
    private final String smallLogoUrl;

    public final String component1() {
        return this.f406id;
    }

    public final BlockchainType component2() {
        return this.blockchainType;
    }

    public final String component3() {
        return this.fullName;
    }

    public final String component4() {
        return this.shortName;
    }

    public final String component5() {
        return this.colorHex;
    }

    public final Explorer component6() {
        return this.explorer;
    }

    public final Long component7() {
        return this.chainId;
    }

    public final String component8() {
        return this.logoUrl;
    }

    public final String component9() {
        return this.smallLogoUrl;
    }

    public final Network copy(String id, BlockchainType blockchainType, String fullName, String shortName, String colorHex, Explorer explorer, Long l, String logoUrl, String smallLogoUrl) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        Intrinsics.checkNotNullParameter(fullName, "fullName");
        Intrinsics.checkNotNullParameter(shortName, "shortName");
        Intrinsics.checkNotNullParameter(colorHex, "colorHex");
        Intrinsics.checkNotNullParameter(explorer, "explorer");
        Intrinsics.checkNotNullParameter(logoUrl, "logoUrl");
        Intrinsics.checkNotNullParameter(smallLogoUrl, "smallLogoUrl");
        return new Network(id, blockchainType, fullName, shortName, colorHex, explorer, l, logoUrl, smallLogoUrl);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Network) {
            Network network = (Network) obj;
            return Intrinsics.areEqual(this.f406id, network.f406id) && this.blockchainType == network.blockchainType && Intrinsics.areEqual(this.fullName, network.fullName) && Intrinsics.areEqual(this.shortName, network.shortName) && Intrinsics.areEqual(this.colorHex, network.colorHex) && Intrinsics.areEqual(this.explorer, network.explorer) && Intrinsics.areEqual(this.chainId, network.chainId) && Intrinsics.areEqual(this.logoUrl, network.logoUrl) && Intrinsics.areEqual(this.smallLogoUrl, network.smallLogoUrl);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = ((((((((((this.f406id.hashCode() * 31) + this.blockchainType.hashCode()) * 31) + this.fullName.hashCode()) * 31) + this.shortName.hashCode()) * 31) + this.colorHex.hashCode()) * 31) + this.explorer.hashCode()) * 31;
        Long l = this.chainId;
        return ((((hashCode + (l == null ? 0 : l.hashCode())) * 31) + this.logoUrl.hashCode()) * 31) + this.smallLogoUrl.hashCode();
    }

    public String toString() {
        return "Network(id=" + this.f406id + ", blockchainType=" + this.blockchainType + ", fullName=" + this.fullName + ", shortName=" + this.shortName + ", colorHex=" + this.colorHex + ", explorer=" + this.explorer + ", chainId=" + this.chainId + ", logoUrl=" + this.logoUrl + ", smallLogoUrl=" + this.smallLogoUrl + ')';
    }

    public Network(String id, BlockchainType blockchainType, String fullName, String shortName, String colorHex, Explorer explorer, Long l, String logoUrl, String smallLogoUrl) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        Intrinsics.checkNotNullParameter(fullName, "fullName");
        Intrinsics.checkNotNullParameter(shortName, "shortName");
        Intrinsics.checkNotNullParameter(colorHex, "colorHex");
        Intrinsics.checkNotNullParameter(explorer, "explorer");
        Intrinsics.checkNotNullParameter(logoUrl, "logoUrl");
        Intrinsics.checkNotNullParameter(smallLogoUrl, "smallLogoUrl");
        this.f406id = id;
        this.blockchainType = blockchainType;
        this.fullName = fullName;
        this.shortName = shortName;
        this.colorHex = colorHex;
        this.explorer = explorer;
        this.chainId = l;
        this.logoUrl = logoUrl;
        this.smallLogoUrl = smallLogoUrl;
    }

    public final String getId() {
        return this.f406id;
    }

    public final BlockchainType getBlockchainType() {
        return this.blockchainType;
    }

    public final String getFullName() {
        return this.fullName;
    }

    public final String getShortName() {
        return this.shortName;
    }

    public final String getColorHex() {
        return this.colorHex;
    }

    public final Explorer getExplorer() {
        return this.explorer;
    }

    public final Long getChainId() {
        return this.chainId;
    }

    public final String getLogoUrl() {
        return this.logoUrl;
    }

    public final String getSmallLogoUrl() {
        return this.smallLogoUrl;
    }

    /* compiled from: Network.kt */
    /* loaded from: classes3.dex */
    public static final class Explorer {
        private final String logoUrl;
        private final String name;
        private final PathTemplate pathTemplate;
        private final String url;

        public static /* synthetic */ Explorer copy$default(Explorer explorer, String str, String str2, String str3, PathTemplate pathTemplate, int i, Object obj) {
            if ((i & 1) != 0) {
                str = explorer.name;
            }
            if ((i & 2) != 0) {
                str2 = explorer.url;
            }
            if ((i & 4) != 0) {
                str3 = explorer.logoUrl;
            }
            if ((i & 8) != 0) {
                pathTemplate = explorer.pathTemplate;
            }
            return explorer.copy(str, str2, str3, pathTemplate);
        }

        public final String component1() {
            return this.name;
        }

        public final String component2() {
            return this.url;
        }

        public final String component3() {
            return this.logoUrl;
        }

        public final PathTemplate component4() {
            return this.pathTemplate;
        }

        public final Explorer copy(String name, String url, String logoUrl, PathTemplate pathTemplate) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(logoUrl, "logoUrl");
            Intrinsics.checkNotNullParameter(pathTemplate, "pathTemplate");
            return new Explorer(name, url, logoUrl, pathTemplate);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Explorer) {
                Explorer explorer = (Explorer) obj;
                return Intrinsics.areEqual(this.name, explorer.name) && Intrinsics.areEqual(this.url, explorer.url) && Intrinsics.areEqual(this.logoUrl, explorer.logoUrl) && Intrinsics.areEqual(this.pathTemplate, explorer.pathTemplate);
            }
            return false;
        }

        public int hashCode() {
            return (((((this.name.hashCode() * 31) + this.url.hashCode()) * 31) + this.logoUrl.hashCode()) * 31) + this.pathTemplate.hashCode();
        }

        public String toString() {
            return "Explorer(name=" + this.name + ", url=" + this.url + ", logoUrl=" + this.logoUrl + ", pathTemplate=" + this.pathTemplate + ')';
        }

        public Explorer(String name, String url, String logoUrl, PathTemplate pathTemplate) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(logoUrl, "logoUrl");
            Intrinsics.checkNotNullParameter(pathTemplate, "pathTemplate");
            this.name = name;
            this.url = url;
            this.logoUrl = logoUrl;
            this.pathTemplate = pathTemplate;
        }

        public final String getName() {
            return this.name;
        }

        public final String getUrl() {
            return this.url;
        }

        public final String getLogoUrl() {
            return this.logoUrl;
        }

        public final PathTemplate getPathTemplate() {
            return this.pathTemplate;
        }

        /* compiled from: Network.kt */
        /* loaded from: classes3.dex */
        public static final class PathTemplate {
            private final String address;
            private final String token;

            /* renamed from: tx */
            private final String f407tx;

            public static /* synthetic */ PathTemplate copy$default(PathTemplate pathTemplate, String str, String str2, String str3, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = pathTemplate.address;
                }
                if ((i & 2) != 0) {
                    str2 = pathTemplate.token;
                }
                if ((i & 4) != 0) {
                    str3 = pathTemplate.f407tx;
                }
                return pathTemplate.copy(str, str2, str3);
            }

            public final String component1() {
                return this.address;
            }

            public final String component2() {
                return this.token;
            }

            public final String component3() {
                return this.f407tx;
            }

            public final PathTemplate copy(String address, String token, String tx) {
                Intrinsics.checkNotNullParameter(address, "address");
                Intrinsics.checkNotNullParameter(token, "token");
                Intrinsics.checkNotNullParameter(tx, "tx");
                return new PathTemplate(address, token, tx);
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj instanceof PathTemplate) {
                    PathTemplate pathTemplate = (PathTemplate) obj;
                    return Intrinsics.areEqual(this.address, pathTemplate.address) && Intrinsics.areEqual(this.token, pathTemplate.token) && Intrinsics.areEqual(this.f407tx, pathTemplate.f407tx);
                }
                return false;
            }

            public int hashCode() {
                return (((this.address.hashCode() * 31) + this.token.hashCode()) * 31) + this.f407tx.hashCode();
            }

            public String toString() {
                return "PathTemplate(address=" + this.address + ", token=" + this.token + ", tx=" + this.f407tx + ')';
            }

            public PathTemplate(String address, String token, String tx) {
                Intrinsics.checkNotNullParameter(address, "address");
                Intrinsics.checkNotNullParameter(token, "token");
                Intrinsics.checkNotNullParameter(tx, "tx");
                this.address = address;
                this.token = token;
                this.f407tx = tx;
            }

            public final String getAddress() {
                return this.address;
            }

            public final String getToken() {
                return this.token;
            }

            public final String getTx() {
                return this.f407tx;
            }
        }
    }

    public final boolean isEVM() {
        return this.blockchainType == BlockchainType.EVM;
    }

    public final String getAddressUrl(String address) {
        String replace$default;
        Intrinsics.checkNotNullParameter(address, "address");
        Explorer explorer = this.explorer;
        StringBuilder sb = new StringBuilder();
        sb.append(explorer.getUrl());
        replace$default = StringsKt__StringsJVMKt.replace$default(explorer.getPathTemplate().getAddress(), PATH_TEMPLATE_ADDRESS_PART, address, false, 4, (Object) null);
        sb.append(replace$default);
        return sb.toString();
    }

    public final String getTokenUrl(String tokenContractAddress) {
        String replace$default;
        Intrinsics.checkNotNullParameter(tokenContractAddress, "tokenContractAddress");
        Explorer explorer = this.explorer;
        StringBuilder sb = new StringBuilder();
        sb.append(explorer.getUrl());
        replace$default = StringsKt__StringsJVMKt.replace$default(explorer.getPathTemplate().getToken(), PATH_TEMPLATE_ADDRESS_PART, tokenContractAddress, false, 4, (Object) null);
        sb.append(replace$default);
        return sb.toString();
    }

    public final String getTxUrl(String txHash) {
        String replace$default;
        Intrinsics.checkNotNullParameter(txHash, "txHash");
        Explorer explorer = this.explorer;
        StringBuilder sb = new StringBuilder();
        sb.append(explorer.getUrl());
        replace$default = StringsKt__StringsJVMKt.replace$default(explorer.getPathTemplate().getTx(), PATH_TEMPLATE_HASH_PART, txHash, false, 4, (Object) null);
        sb.append(replace$default);
        return sb.toString();
    }

    /* compiled from: Network.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
