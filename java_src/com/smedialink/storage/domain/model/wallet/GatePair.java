package com.smedialink.storage.domain.model.wallet;

import com.smedialink.storage.R$string;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import java.util.ArrayList;
import java.util.Objects;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: GatePair.kt */
/* loaded from: classes3.dex */
public enum GatePair {
    LIME_ETH(R$string.wallet_gate_pair_lime_eth, R$string.wallet_gate_pair_lime_eth_url),
    LIME_USDT(R$string.wallet_gate_pair_lime_usdt, R$string.wallet_gate_pair_lime_usdt_url),
    LIME_BTC(R$string.wallet_gate_pair_lime_btc, R$string.wallet_gate_pair_lime_btc_url);
    
    public static final Companion Companion = new Companion(null);
    private int title;
    private int url;

    public static final String[] getTitlesAsArray(ResourceManager resourceManager) {
        return Companion.getTitlesAsArray(resourceManager);
    }

    GatePair(int i, int i2) {
        this.title = i;
        this.url = i2;
    }

    public final int getTitle() {
        return this.title;
    }

    public final void setTitle(int i) {
        this.title = i;
    }

    public final int getUrl() {
        return this.url;
    }

    public final void setUrl(int i) {
        this.url = i;
    }

    /* compiled from: GatePair.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final String[] getTitlesAsArray(ResourceManager resourceManager) {
            Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
            GatePair[] values = GatePair.values();
            ArrayList arrayList = new ArrayList(values.length);
            for (GatePair gatePair : values) {
                arrayList.add(resourceManager.getString(gatePair.getTitle()));
            }
            Object[] array = arrayList.toArray(new String[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            return (String[]) array;
        }
    }
}
