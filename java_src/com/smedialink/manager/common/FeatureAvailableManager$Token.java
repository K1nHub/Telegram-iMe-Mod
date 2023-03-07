package com.smedialink.manager.common;

import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: FeatureAvailableManager.kt */
/* loaded from: classes3.dex */
public final class FeatureAvailableManager$Token {
    public static final FeatureAvailableManager$Token INSTANCE = new FeatureAvailableManager$Token();

    /* compiled from: FeatureAvailableManager.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[NetworkType.values().length];
            iArr[NetworkType.ETHEREUM.ordinal()] = 1;
            iArr[NetworkType.BINANCE_SMART_CHAIN.ordinal()] = 2;
            iArr[NetworkType.POLYGON.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private FeatureAvailableManager$Token() {
    }

    public final boolean isSwapAvailable(TokenCode token, NetworkType networkType) {
        List listOf;
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        int i = WhenMappings.$EnumSwitchMapping$0[networkType.ordinal()];
        if (i == 1) {
            listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TokenCode[]{TokenCode.FIL, TokenCode.LANC, TokenCode.UNKNOWN});
            return !listOf.contains(token);
        } else if (i != 2) {
            if (i != 3) {
                return false;
            }
            return TokenCode.Companion.getPolygonCodes().contains(token);
        } else {
            return TokenCode.Companion.getBSCCodes().contains(token);
        }
    }

    public final boolean isPurchaseViaSimplexAvailable(TokenCode token, NetworkType networkType) {
        List listOf;
        List listOf2;
        List listOf3;
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        int i = WhenMappings.$EnumSwitchMapping$0[networkType.ordinal()];
        if (i == 1) {
            listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TokenCode[]{TokenCode.ETHER, TokenCode.USDT, TokenCode.BUSD, TokenCode.MATIC});
            return listOf.contains(token);
        } else if (i == 2) {
            listOf2 = CollectionsKt__CollectionsJVMKt.listOf(TokenCode.BNB);
            return listOf2.contains(token);
        } else if (i != 3) {
            return false;
        } else {
            listOf3 = CollectionsKt__CollectionsJVMKt.listOf(TokenCode.MATIC);
            return listOf3.contains(token);
        }
    }

    public final boolean isPurchaseViaSwapAvailable(TokenCode token, NetworkType networkType) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        return isSwapAvailable(token, networkType);
    }

    public final boolean isPurchaseAvailable(TokenCode token, NetworkType networkType) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        return isPurchaseViaSwapAvailable(token, networkType) || isPurchaseViaSimplexAvailable(token, networkType);
    }
}
