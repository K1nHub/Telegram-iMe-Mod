package com.iMe.model.wallet.swap;

import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.storage.domain.model.wallet.swap.Exchange;
import com.iMe.storage.domain.model.wallet.swap.SwapProtocolInfo;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SwapItem.kt */
/* loaded from: classes3.dex */
public final class SwapItem {
    private final Exchange info;
    private final boolean isEnabled;

    public static /* synthetic */ SwapItem copy$default(SwapItem swapItem, Exchange exchange, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            exchange = swapItem.info;
        }
        if ((i & 2) != 0) {
            z = swapItem.isEnabled;
        }
        return swapItem.copy(exchange, z);
    }

    public final Exchange component1() {
        return this.info;
    }

    public final boolean component2() {
        return this.isEnabled;
    }

    public final SwapItem copy(Exchange info, boolean z) {
        Intrinsics.checkNotNullParameter(info, "info");
        return new SwapItem(info, z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SwapItem) {
            SwapItem swapItem = (SwapItem) obj;
            return Intrinsics.areEqual(this.info, swapItem.info) && this.isEnabled == swapItem.isEnabled;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = this.info.hashCode() * 31;
        boolean z = this.isEnabled;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    public String toString() {
        return "SwapItem(info=" + this.info + ", isEnabled=" + this.isEnabled + ')';
    }

    public SwapItem(Exchange info, boolean z) {
        Intrinsics.checkNotNullParameter(info, "info");
        this.info = info;
        this.isEnabled = z;
    }

    public final Exchange getInfo() {
        return this.info;
    }

    public final boolean isEnabled() {
        return this.isEnabled;
    }

    public int getItemType() {
        return this.info instanceof SwapProtocolInfo ? IdFabric$ViewTypes.SWAP_PROTOCOL : IdFabric$ViewTypes.CENTRALIZED_EXCHANGES;
    }
}
