package com.smedialink.storage.domain.model.wallet.token;

import com.smedialink.storage.domain.model.crypto.NetworkType;
import java.util.Collection;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TokenCode.kt */
/* loaded from: classes3.dex */
public enum TokenCode {
    ETHER,
    LIME,
    USDT,
    BNB,
    BUSD,
    LINK,
    WBTC,
    MATIC,
    FIL,
    OKB,
    LANC,
    GT,
    LIT,
    PRQ,
    UFT,
    TRU,
    HAPI,
    TARA,
    BCUG,
    PCNT,
    SIG,
    UFI,
    DHV,
    OLCF,
    ATD,
    DEGO,
    PRE,
    EQX,
    LSS,
    GAINS,
    UNN,
    DEXT,
    TOMOE,
    FLURRY,
    FRM,
    DOP,
    GFX,
    D11,
    DVD,
    METIS,
    CTSI,
    SAITO,
    ZCX,
    CEEK,
    XEND,
    SHR,
    BOSON,
    KONO,
    KFT,
    OM,
    ROYA,
    CVR,
    SKILL,
    YAY,
    KABY,
    USDO,
    FUSE,
    USDC,
    SAND,
    DAI,
    QUICK,
    AAVE,
    GNS,
    MANA,
    GHST,
    UNI,
    TON,
    SHIB,
    INF,
    KOM,
    FTM,
    PPM,
    SIN,
    INTERNAL,
    USD,
    UNKNOWN;
    
    public static final Companion Companion = new Companion(null);

    public static final TokenCode map(String str) {
        return Companion.map(str);
    }

    public final String getName() {
        return name();
    }

    public final boolean isUnknown() {
        return this == UNKNOWN;
    }

    public final boolean isLime() {
        return this == LIME;
    }

    public final boolean isEth() {
        return this == ETHER;
    }

    public final boolean isEthTokens() {
        return Companion.getEthereumCodes().contains(this) && this != ETHER;
    }

    public final boolean isEthAndTokens() {
        return Companion.getEthereumCodes().contains(this);
    }

    public final boolean isBscTokens() {
        return Companion.getBSCCodes().contains(this);
    }

    public final boolean isPolygonTokens() {
        return Companion.getPolygonCodes().contains(this);
    }

    public final boolean isFantomTokens() {
        return Companion.getFantomCodes().contains(this);
    }

    public final boolean isTonTokens() {
        return Companion.getTonCodes().contains(this);
    }

    public final boolean isCryptoTokens() {
        return isBscTokens() || isEthAndTokens() || isPolygonTokens() || isFantomTokens() || isTonTokens();
    }

    /* compiled from: TokenCode.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {

        /* compiled from: TokenCode.kt */
        /* loaded from: classes3.dex */
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[NetworkType.values().length];
                try {
                    iArr[NetworkType.ETHEREUM.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[NetworkType.BINANCE_SMART_CHAIN.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[NetworkType.POLYGON.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[NetworkType.FANTOM.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[NetworkType.THE_OPEN_NETWORK.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final TokenCode map(String code) {
            TokenCode tokenCode;
            Intrinsics.checkNotNullParameter(code, "code");
            TokenCode[] values = TokenCode.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    tokenCode = null;
                    break;
                }
                tokenCode = values[i];
                if (Intrinsics.areEqual(tokenCode.name(), code)) {
                    break;
                }
                i++;
            }
            return tokenCode == null ? TokenCode.UNKNOWN : tokenCode;
        }

        public final List<TokenCode> getEthereumCodes() {
            return CollectionsKt.listOf((Object[]) new TokenCode[]{TokenCode.ETHER, TokenCode.LIME, TokenCode.USDT, TokenCode.OLCF, TokenCode.BNB, TokenCode.BUSD, TokenCode.LINK, TokenCode.WBTC, TokenCode.MATIC, TokenCode.OKB, TokenCode.GT, TokenCode.LIT, TokenCode.PRQ, TokenCode.UFT, TokenCode.TRU, TokenCode.HAPI, TokenCode.TARA, TokenCode.BCUG, TokenCode.PCNT, TokenCode.SIG, TokenCode.UFI, TokenCode.DHV, TokenCode.ATD, TokenCode.DEGO, TokenCode.PRE, TokenCode.EQX, TokenCode.LSS, TokenCode.GAINS, TokenCode.UNN, TokenCode.DEXT, TokenCode.TOMOE, TokenCode.FLURRY, TokenCode.FRM, TokenCode.DOP, TokenCode.GFX, TokenCode.D11, TokenCode.DVD, TokenCode.METIS, TokenCode.CTSI, TokenCode.SAITO, TokenCode.ZCX, TokenCode.CEEK, TokenCode.XEND, TokenCode.SHR, TokenCode.BOSON, TokenCode.KONO, TokenCode.KFT, TokenCode.OM, TokenCode.ROYA, TokenCode.CVR, TokenCode.FUSE, TokenCode.TON, TokenCode.SHIB});
        }

        public final List<TokenCode> getBSCCodes() {
            return CollectionsKt.listOf((Object[]) new TokenCode[]{TokenCode.ETHER, TokenCode.LIME, TokenCode.USDT, TokenCode.BNB, TokenCode.BUSD, TokenCode.LINK, TokenCode.PCNT, TokenCode.UFI, TokenCode.FIL, TokenCode.LANC, TokenCode.DEGO, TokenCode.EQX, TokenCode.FLURRY, TokenCode.GFX, TokenCode.CTSI, TokenCode.CEEK, TokenCode.XEND, TokenCode.KONO, TokenCode.KFT, TokenCode.OM, TokenCode.SKILL, TokenCode.YAY, TokenCode.KABY, TokenCode.USDO, TokenCode.FUSE, TokenCode.TON, TokenCode.INF, TokenCode.PPM, TokenCode.SIN});
        }

        public final List<TokenCode> getPolygonCodes() {
            return CollectionsKt.listOf((Object[]) new TokenCode[]{TokenCode.MATIC, TokenCode.USDT, TokenCode.USDC, TokenCode.WBTC, TokenCode.SAND, TokenCode.DAI, TokenCode.QUICK, TokenCode.AAVE, TokenCode.GNS, TokenCode.MANA, TokenCode.LINK, TokenCode.GHST, TokenCode.UNI, TokenCode.LIME, TokenCode.INF, TokenCode.KOM});
        }

        public final List<TokenCode> getFantomCodes() {
            return CollectionsKt.listOf(TokenCode.FTM);
        }

        public final List<TokenCode> getTonCodes() {
            return CollectionsKt.listOf(TokenCode.TON);
        }

        public final List<TokenCode> getTokensByNetwork(NetworkType networkType) {
            Intrinsics.checkNotNullParameter(networkType, "networkType");
            int i = WhenMappings.$EnumSwitchMapping$0[networkType.ordinal()];
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            if (i == 5) {
                                return getTonCodes();
                            }
                            throw new NoWhenBranchMatchedException();
                        }
                        return getFantomCodes();
                    }
                    return getPolygonCodes();
                }
                return getBSCCodes();
            }
            return getEthereumCodes();
        }

        public final List<TokenCode> getCryptoCodes() {
            return CollectionsKt.distinct(CollectionsKt.plus((Collection) CollectionsKt.plus((Collection) CollectionsKt.plus((Collection) CollectionsKt.plus((Collection) getEthereumCodes(), (Iterable) getBSCCodes()), (Iterable) getPolygonCodes()), (Iterable) getFantomCodes()), (Iterable) getTonCodes()));
        }
    }
}
