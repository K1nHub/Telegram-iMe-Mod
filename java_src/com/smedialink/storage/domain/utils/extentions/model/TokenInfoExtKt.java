package com.smedialink.storage.domain.utils.extentions.model;

import com.smedialink.storage.R$drawable;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.wallet.token.TokenInfo;
import com.smedialink.storage.domain.utils.crypto.Convert;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TokenInfoExt.kt */
/* loaded from: classes3.dex */
public final class TokenInfoExtKt {

    /* compiled from: TokenInfoExt.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[NetworkType.values().length];
            iArr[NetworkType.BINANCE_SMART_CHAIN.ordinal()] = 1;
            iArr[NetworkType.POLYGON.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final int getLogo(TokenInfo tokenInfo, NetworkType networkType) {
        Intrinsics.checkNotNullParameter(tokenInfo, "<this>");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        if (Intrinsics.areEqual(tokenInfo, TokenInfo.Crypto.Ethereum.LIME.INSTANCE)) {
            int i = WhenMappings.$EnumSwitchMapping$0[networkType.ordinal()];
            if (i != 1) {
                if (i == 2) {
                    return R$drawable.fork_ic_lime_polygon_logo;
                }
                return tokenInfo.getLogo();
            }
            return R$drawable.fork_ic_lime_bnb_logo;
        }
        return tokenInfo.getLogo();
    }

    public static final Convert.Unit getWeiConvertUnit(TokenInfo.Crypto.Ethereum ethereum, NetworkType networkType) {
        Intrinsics.checkNotNullParameter(ethereum, "<this>");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        if (Intrinsics.areEqual(ethereum, TokenInfo.Crypto.Ethereum.USDT.INSTANCE)) {
            if (WhenMappings.$EnumSwitchMapping$0[networkType.ordinal()] == 1) {
                return Convert.Unit.ETHER;
            }
            return ethereum.getWeiConvertUnit();
        }
        return ethereum.getWeiConvertUnit();
    }
}
