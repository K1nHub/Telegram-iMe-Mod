package com.iMe.manager.common;

import com.iMe.storage.domain.model.crypto.NetworkType;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: FeatureAvailableManager.kt */
/* loaded from: classes3.dex */
public final class FeatureAvailableManager$Token {
    public static final FeatureAvailableManager$Token INSTANCE = new FeatureAvailableManager$Token();

    private FeatureAvailableManager$Token() {
    }

    public final boolean isPurchaseAvailable(String networkId) {
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        return isPurchaseViaSwapAvailable(networkId);
    }

    private final boolean isPurchaseViaSwapAvailable(String str) {
        List listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{NetworkType.BSC, NetworkType.ETH, NetworkType.POLY});
        return listOf.contains(str);
    }
}
