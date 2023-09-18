package com.iMe.manager.common;

import com.iMe.storage.domain.model.wallet.swap.SwapProtocolInfo;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: FeatureAvailableManager.kt */
/* loaded from: classes4.dex */
public final class FeatureAvailableManager$Token {
    public static final FeatureAvailableManager$Token INSTANCE = new FeatureAvailableManager$Token();

    private FeatureAvailableManager$Token() {
    }

    public final boolean isPurchaseAvailable(String networkId) {
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        return isPurchaseViaSwapAvailable(networkId);
    }

    private final boolean isPurchaseViaSwapAvailable(String str) {
        return SwapProtocolInfo.Oneinch.INSTANCE.getSupportedNetworksIds().contains(str);
    }
}
