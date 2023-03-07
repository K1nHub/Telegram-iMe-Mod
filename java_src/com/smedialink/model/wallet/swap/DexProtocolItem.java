package com.smedialink.model.wallet.swap;

import com.smedialink.model.common.NoChildNode;
import com.smedialink.storage.domain.model.wallet.swap.SwapProtocolInfo;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: DexProtocolItem.kt */
/* loaded from: classes3.dex */
public final class DexProtocolItem extends NoChildNode {
    private final SwapProtocolInfo info;
    private final boolean isEnabled;

    public static /* synthetic */ DexProtocolItem copy$default(DexProtocolItem dexProtocolItem, SwapProtocolInfo swapProtocolInfo, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            swapProtocolInfo = dexProtocolItem.info;
        }
        if ((i & 2) != 0) {
            z = dexProtocolItem.isEnabled;
        }
        return dexProtocolItem.copy(swapProtocolInfo, z);
    }

    public final SwapProtocolInfo component1() {
        return this.info;
    }

    public final boolean component2() {
        return this.isEnabled;
    }

    public final DexProtocolItem copy(SwapProtocolInfo info, boolean z) {
        Intrinsics.checkNotNullParameter(info, "info");
        return new DexProtocolItem(info, z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DexProtocolItem) {
            DexProtocolItem dexProtocolItem = (DexProtocolItem) obj;
            return Intrinsics.areEqual(this.info, dexProtocolItem.info) && this.isEnabled == dexProtocolItem.isEnabled;
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
        return "DexProtocolItem(info=" + this.info + ", isEnabled=" + this.isEnabled + ')';
    }

    public final SwapProtocolInfo getInfo() {
        return this.info;
    }

    public final boolean isEnabled() {
        return this.isEnabled;
    }

    public DexProtocolItem(SwapProtocolInfo info, boolean z) {
        Intrinsics.checkNotNullParameter(info, "info");
        this.info = info;
        this.isEnabled = z;
    }
}
