package com.iMe.model.wallet.crypto;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: NetworkItem.kt */
/* loaded from: classes4.dex */
public abstract class NetworkItem {
    public /* synthetic */ NetworkItem(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private NetworkItem() {
    }

    /* compiled from: NetworkItem.kt */
    /* loaded from: classes4.dex */
    public static final class All extends NetworkItem {
        public static final All INSTANCE = new All();

        private All() {
            super(null);
        }
    }

    /* compiled from: NetworkItem.kt */
    /* loaded from: classes4.dex */
    public static final class Crypto extends NetworkItem {
        private final String colorHex;
        private final String explorerLogoUrl;
        private final String explorerName;
        private final String fullName;
        private final String logoUrl;
        private final String networkId;
        private final String shortName;
        private final String smallLogoUrl;

        public final String component1() {
            return this.networkId;
        }

        public final String component2() {
            return this.fullName;
        }

        public final String component3() {
            return this.shortName;
        }

        public final String component4() {
            return this.colorHex;
        }

        public final String component5() {
            return this.logoUrl;
        }

        public final String component6() {
            return this.smallLogoUrl;
        }

        public final String component7() {
            return this.explorerName;
        }

        public final String component8() {
            return this.explorerLogoUrl;
        }

        public final Crypto copy(String networkId, String fullName, String shortName, String colorHex, String logoUrl, String smallLogoUrl, String explorerName, String explorerLogoUrl) {
            Intrinsics.checkNotNullParameter(networkId, "networkId");
            Intrinsics.checkNotNullParameter(fullName, "fullName");
            Intrinsics.checkNotNullParameter(shortName, "shortName");
            Intrinsics.checkNotNullParameter(colorHex, "colorHex");
            Intrinsics.checkNotNullParameter(logoUrl, "logoUrl");
            Intrinsics.checkNotNullParameter(smallLogoUrl, "smallLogoUrl");
            Intrinsics.checkNotNullParameter(explorerName, "explorerName");
            Intrinsics.checkNotNullParameter(explorerLogoUrl, "explorerLogoUrl");
            return new Crypto(networkId, fullName, shortName, colorHex, logoUrl, smallLogoUrl, explorerName, explorerLogoUrl);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Crypto) {
                Crypto crypto = (Crypto) obj;
                return Intrinsics.areEqual(this.networkId, crypto.networkId) && Intrinsics.areEqual(this.fullName, crypto.fullName) && Intrinsics.areEqual(this.shortName, crypto.shortName) && Intrinsics.areEqual(this.colorHex, crypto.colorHex) && Intrinsics.areEqual(this.logoUrl, crypto.logoUrl) && Intrinsics.areEqual(this.smallLogoUrl, crypto.smallLogoUrl) && Intrinsics.areEqual(this.explorerName, crypto.explorerName) && Intrinsics.areEqual(this.explorerLogoUrl, crypto.explorerLogoUrl);
            }
            return false;
        }

        public int hashCode() {
            return (((((((((((((this.networkId.hashCode() * 31) + this.fullName.hashCode()) * 31) + this.shortName.hashCode()) * 31) + this.colorHex.hashCode()) * 31) + this.logoUrl.hashCode()) * 31) + this.smallLogoUrl.hashCode()) * 31) + this.explorerName.hashCode()) * 31) + this.explorerLogoUrl.hashCode();
        }

        public String toString() {
            return "Crypto(networkId=" + this.networkId + ", fullName=" + this.fullName + ", shortName=" + this.shortName + ", colorHex=" + this.colorHex + ", logoUrl=" + this.logoUrl + ", smallLogoUrl=" + this.smallLogoUrl + ", explorerName=" + this.explorerName + ", explorerLogoUrl=" + this.explorerLogoUrl + ')';
        }

        public final String getNetworkId() {
            return this.networkId;
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

        public final String getLogoUrl() {
            return this.logoUrl;
        }

        public final String getSmallLogoUrl() {
            return this.smallLogoUrl;
        }

        public final String getExplorerName() {
            return this.explorerName;
        }

        public final String getExplorerLogoUrl() {
            return this.explorerLogoUrl;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Crypto(String networkId, String fullName, String shortName, String colorHex, String logoUrl, String smallLogoUrl, String explorerName, String explorerLogoUrl) {
            super(null);
            Intrinsics.checkNotNullParameter(networkId, "networkId");
            Intrinsics.checkNotNullParameter(fullName, "fullName");
            Intrinsics.checkNotNullParameter(shortName, "shortName");
            Intrinsics.checkNotNullParameter(colorHex, "colorHex");
            Intrinsics.checkNotNullParameter(logoUrl, "logoUrl");
            Intrinsics.checkNotNullParameter(smallLogoUrl, "smallLogoUrl");
            Intrinsics.checkNotNullParameter(explorerName, "explorerName");
            Intrinsics.checkNotNullParameter(explorerLogoUrl, "explorerLogoUrl");
            this.networkId = networkId;
            this.fullName = fullName;
            this.shortName = shortName;
            this.colorHex = colorHex;
            this.logoUrl = logoUrl;
            this.smallLogoUrl = smallLogoUrl;
            this.explorerName = explorerName;
            this.explorerLogoUrl = explorerLogoUrl;
        }
    }
}
