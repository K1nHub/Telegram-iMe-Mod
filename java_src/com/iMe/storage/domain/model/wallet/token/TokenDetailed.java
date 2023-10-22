package com.iMe.storage.domain.model.wallet.token;

import com.iMe.storage.data.manager.common.EnvironmentManager;
import com.iMe.storage.data.utils.crypto.NetworksHelper;
import com.iMe.storage.data.utils.extentions.NumberExtKt;
import com.iMe.storage.domain.model.crypto.NetworkType;
import java.math.BigDecimal;
import java.math.BigInteger;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TokenDetailed.kt */
/* loaded from: classes3.dex */
public final class TokenDetailed {
    private final String address;
    private final String avatarUrl;
    private final int decimals;
    private final boolean isCoin;
    private final String name;
    private final String networkId;
    private final String ticker;
    private final String website;
    public static final Companion Companion = new Companion(null);
    private static final TokenDetailed BNB = new TokenDetailed("", NetworkType.BSC, "", 8, "BNB", true, "Binance Coin", "https://binance.com/en");
    private static final TokenDetailed USD = new TokenDetailed("", NetworkType.BSC, "", 2, "$", false, "USD", "");

    public static final TokenDetailed getBNB() {
        return Companion.getBNB();
    }

    public static final TokenDetailed getLIME(String str) {
        return Companion.getLIME(str);
    }

    public static final TokenDetailed getUSD() {
        return Companion.getUSD();
    }

    public final String component1() {
        return this.address;
    }

    public final String component2() {
        return this.networkId;
    }

    public final String component3() {
        return this.avatarUrl;
    }

    public final int component4() {
        return this.decimals;
    }

    public final String component5() {
        return this.ticker;
    }

    public final boolean component6() {
        return this.isCoin;
    }

    public final String component7() {
        return this.name;
    }

    public final String component8() {
        return this.website;
    }

    public final TokenDetailed copy(String address, String networkId, String avatarUrl, int i, String ticker, boolean z, String name, String website) {
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Intrinsics.checkNotNullParameter(avatarUrl, "avatarUrl");
        Intrinsics.checkNotNullParameter(ticker, "ticker");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(website, "website");
        return new TokenDetailed(address, networkId, avatarUrl, i, ticker, z, name, website);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TokenDetailed) {
            TokenDetailed tokenDetailed = (TokenDetailed) obj;
            return Intrinsics.areEqual(this.address, tokenDetailed.address) && Intrinsics.areEqual(this.networkId, tokenDetailed.networkId) && Intrinsics.areEqual(this.avatarUrl, tokenDetailed.avatarUrl) && this.decimals == tokenDetailed.decimals && Intrinsics.areEqual(this.ticker, tokenDetailed.ticker) && this.isCoin == tokenDetailed.isCoin && Intrinsics.areEqual(this.name, tokenDetailed.name) && Intrinsics.areEqual(this.website, tokenDetailed.website);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((((((((this.address.hashCode() * 31) + this.networkId.hashCode()) * 31) + this.avatarUrl.hashCode()) * 31) + this.decimals) * 31) + this.ticker.hashCode()) * 31;
        boolean z = this.isCoin;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return ((((hashCode + i) * 31) + this.name.hashCode()) * 31) + this.website.hashCode();
    }

    public String toString() {
        return "TokenDetailed(address=" + this.address + ", networkId=" + this.networkId + ", avatarUrl=" + this.avatarUrl + ", decimals=" + this.decimals + ", ticker=" + this.ticker + ", isCoin=" + this.isCoin + ", name=" + this.name + ", website=" + this.website + ')';
    }

    public TokenDetailed(String address, String networkId, String avatarUrl, int i, String ticker, boolean z, String name, String website) {
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Intrinsics.checkNotNullParameter(avatarUrl, "avatarUrl");
        Intrinsics.checkNotNullParameter(ticker, "ticker");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(website, "website");
        this.address = address;
        this.networkId = networkId;
        this.avatarUrl = avatarUrl;
        this.decimals = i;
        this.ticker = ticker;
        this.isCoin = z;
        this.name = name;
        this.website = website;
    }

    public final String getAddress() {
        return this.address;
    }

    public final String getNetworkId() {
        return this.networkId;
    }

    public final String getAvatarUrl() {
        return this.avatarUrl;
    }

    public final int getDecimals() {
        return this.decimals;
    }

    public final String getTicker() {
        return this.ticker;
    }

    public final boolean isCoin() {
        return this.isCoin;
    }

    public final String getName() {
        return this.name;
    }

    public final String getWebsite() {
        return this.website;
    }

    public final BigInteger getConvertedAmount(BigDecimal amount) {
        Intrinsics.checkNotNullParameter(amount, "amount");
        BigDecimal multiply = amount.multiply(BigDecimal.TEN.pow(this.decimals));
        Intrinsics.checkNotNullExpressionValue(multiply, "amount.multiply(BigDecimal.TEN.pow(decimals))");
        return NumberExtKt.toBigIntegerCatching(multiply);
    }

    public final String getContractUrl() {
        return NetworksHelper.getNetworkById(this.networkId).getTokenUrl(this.address);
    }

    /* compiled from: TokenDetailed.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ void getBNB$annotations() {
        }

        public static /* synthetic */ void getUSD$annotations() {
        }

        private Companion() {
        }

        public final TokenDetailed getBNB() {
            return TokenDetailed.BNB;
        }

        public final TokenDetailed getLIME(String networkId) {
            Intrinsics.checkNotNullParameter(networkId, "networkId");
            return new TokenDetailed(getLIMEAddress(networkId), networkId, getLIMELogoUrl(networkId), 8, "LIME", false, "iMe Lab", "https://imem.app/");
        }

        public final TokenDetailed getUSD() {
            return TokenDetailed.USD;
        }

        private final String getLIMEAddress(String str) {
            if (EnvironmentManager.INSTANCE.getEnvironment().isStageEnvironment()) {
                int hashCode = str.hashCode();
                return hashCode != -636739593 ? hashCode != 320463130 ? (hashCode == 1017915522 && str.equals(NetworkType.BSC)) ? "0xbfAaF004504bcc139B354cf8F12f5b830CdD0DE6" : "" : !str.equals(NetworkType.POLY) ? "" : "0xf7909CBC21E95000E3d0e14004aADdea2bb1796d" : !str.equals(NetworkType.ETH) ? "" : "0x98B3C321F619d8D87c54a46b7ce9495E43d6F7Ef";
            }
            int hashCode2 = str.hashCode();
            return hashCode2 != -636739593 ? hashCode2 != 320463130 ? (hashCode2 == 1017915522 && str.equals(NetworkType.BSC)) ? "0x7bC75e291E656E8658D66Be1cc8154A3769A35Dd" : "" : !str.equals(NetworkType.POLY) ? "" : "0x7f67639ffc8c93dd558d452b8920b28815638c44" : !str.equals(NetworkType.ETH) ? "" : "0x9D0B65a76274645B29e4cc41B8f23081fA09f4A3";
        }

        private final String getLIMELogoUrl(String str) {
            int hashCode = str.hashCode();
            if (hashCode != -636739593) {
                if (hashCode != 320463130) {
                    if (hashCode == 1017915522 && str.equals(NetworkType.BSC)) {
                        return "https://storage.googleapis.com/blockchain-networks/static/lime_bsc.png";
                    }
                } else if (str.equals(NetworkType.POLY)) {
                    return "https://storage.googleapis.com/blockchain-networks/static/lime_polygon.png";
                }
            } else if (str.equals(NetworkType.ETH)) {
                return "https://storage.googleapis.com/blockchain-networks/static/lime_ethereum.png";
            }
            return "";
        }
    }
}
